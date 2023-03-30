package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.domain.Pedido;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.service.PedidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class PedidoController {

	@Autowired
	private PedidoService pedidoService;

	@GetMapping(value = "/pedido")
	public String telaCadastro() {
		return "pedido/cadastro";
	}
	@GetMapping(value = "/pedido/lista")
	public String telaLista(Model model, @SessionAttribute("cadastro") Usuario cadastro) {
		model.addAttribute("pedidos", pedidoService.listagem(cadastro));
		return "pedido/lista";
	}
	@PostMapping(value = "/pedido/incluir")
	public String novoPedido(Pedido pedido, @SessionAttribute("cadastro") Usuario cadastro) {
		pedido.setCadastro(cadastro);
		pedidoService.novo(pedido);
		return "redirect:/pedido/lista";
	}
	@GetMapping(value = "/pedido/{id}/excluir")
	public String apagarPedido(@PathVariable Integer id) {
		Pedido pedido = pedidoService.obterPorId(id);
		pedidoService.apagar(id);
		return "redirect:/pedido/lista";
	}
}
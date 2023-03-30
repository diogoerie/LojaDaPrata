package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.domain.Produto;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.service.ProdutoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class ProdutoController {

	@Autowired
	private ProdutoService produtoService;
	@GetMapping(value = "/listaProduto")
	public String telaLista(Model model, @SessionAttribute("cadastro") Usuario cadastro) {
		model.addAttribute("produtos", produtoService.listagem(cadastro));
		return "produtos/listaProduto";
	}
	@GetMapping(value = "/produtoCadastro")
	public String telaCadastroAnel() {
		return "redirect:/";
	}
	@GetMapping(value = "/produto/{id}/excluir")
	public String apagarProduto(@PathVariable Integer id) {
		Produto produto = produtoService.obterPorId(id);
		produtoService.apagar(id);
		return "redirect:/produto/lista";
	}
}

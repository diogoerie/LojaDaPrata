package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.domain.Anel;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.service.AnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;


@Controller
public class AnelController {

	@Autowired
	private AnelService anelService;

	@GetMapping("/cadastroAnel")
	public String telaCadastroAnel() {
		return "anel/cadastroAnel";
	}
	@PostMapping("/anel/novo")
	public String novoAnel(Anel anel,@SessionAttribute("cadastro") Usuario cadastro) {
		anel.setCadastro(cadastro);
		anelService.novo(anel);
		return "redirect:/listaAnel";
	}
	@GetMapping(value = "/anel/{id}/apagar")
	public String apagarAnel(@PathVariable Integer id) {
		Anel anel = anelService.obterPorId(id);
		anelService.apagar(id);
		return "redirect:/listaAnel";
	}
	@GetMapping("/listaAnel")
	public String telaListaDeAneis(Model model) {
		model.addAttribute("aneis", anelService.listagem());
		return "anel/listaAnel";
	}
}
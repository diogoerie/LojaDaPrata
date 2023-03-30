package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.domain.Colar;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.service.ColarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;


@Controller
public class ColarController {

	@Autowired
	private ColarService colarService;

	@GetMapping("/cadastroColar")
	public String telaCadastroColar() {
		return "colar/cadastroColar";
	}
	@PostMapping("/colar/novo")
	public String novoColar(Colar colar, @SessionAttribute("cadastro") Usuario cadastro) {
		colar.setCadastro(cadastro);
		colarService.novo(colar);
		return "redirect:/listaColar";
	}
	@GetMapping(value = "/colar/{id}/apagar")
	public String apagarColar(@PathVariable Integer id) {
		Colar colar = colarService.obterPorId(id);
		colarService.apagar(id);
		return "redirect:/listaColar";
	}
	@GetMapping("/listaColar")
	public String telaListaDeAneis(Model model) {
		model.addAttribute("colars", colarService.listagem());
		return "colar/listaColar";
	}
}
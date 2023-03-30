package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.domain.Pulseira;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.service.PulseiraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;


@Controller
public class PulseiraController {

	@Autowired
	private PulseiraService pulseiraService;

	@GetMapping("/cadastroPulseira")
	public String telaCadastroPulseira() {
		return "pulseira/cadastroPulseira";
	}
	@PostMapping("/pulseira/novo")
	public String novoPulseira(Pulseira pulseira, @SessionAttribute("cadastro") Usuario cadastro) {
		pulseira.setCadastro(cadastro);
		pulseiraService.novo(pulseira);
		return "redirect:/listaPulseira";
	}
	@GetMapping(value = "/pulseira/{id}/apagar")
	public String apagarPulseira(@PathVariable Integer id) {
		Pulseira pulseira = pulseiraService.obterPorId(id);
		pulseiraService.apagar(id);
		return "redirect:/listaPulseira";
	}
	@GetMapping("/listaPulseira")
	public String telaListaDePulseiras(Model model) {
		model.addAttribute("pulseiras", pulseiraService.listagem());
		return "pulseira/listaPulseira";
	}
}
package br.edu.infnet.lojadaprata.controller;

import br.edu.infnet.lojadaprata.model.service.EnderecoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EnderecoController {

    @Autowired
    private EnderecoService enderecoService;

    @PostMapping("/cep")
    public String telaCadastroColar(Model model, @RequestParam String cep) {
        model.addAttribute("endereco", enderecoService.cepOnline(cep));
        return "cadastro/cadastro";
    }
}
package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.ProblemaDAO;
import br.com.senai.model.Problema;

@Controller
public class ProblemaController {

	private final ProblemaDAO dao;

	@Autowired
	public ProblemaController(ProblemaDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("novoProblema")
	public String problema(Model model) {
		model.addAttribute("equipamento", dao.listarEquipamentos());
		return "formularios/cadastroProblema";
	}

	@RequestMapping("cadastraProblema")
	public String cadastrarProblema(Problema p) {
		dao.adicionar(p);
		return "redirect:principalFuncionario";
	}
}

package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.EquipamentoDAO;
import br.com.senai.model.Equipamento;

@Controller
public class EquipamentoController {

	private EquipamentoDAO dao;
	
	@Autowired
	public EquipamentoController(EquipamentoDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("novoEquipamento")
	public String categoria() {
		return "formularios/cadastroEquipamento";
	}
	
	@RequestMapping("cadastraEquipamento")
	public String cadastra(Equipamento equipamento) {
		dao.adicionar(equipamento);
		return "redirect:principalFuncionario";
	}
}

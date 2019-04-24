package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.DepartamentoDAO;
import br.com.senai.model.Departamento;

@Controller
public class DepartamentoController {
	
private DepartamentoDAO dao;
	
	@Autowired
	public DepartamentoController(DepartamentoDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("novoDepartamento")
	public String departamento() {
		return "formularios/cadastroDepartamento";
	}
	
	@RequestMapping("cadastraDepartamento")
	public String cadastrarDepartamento(Departamento dep) {
		dao.adicionar(dep);
		return "redirect:principalFuncionario";
	}
}

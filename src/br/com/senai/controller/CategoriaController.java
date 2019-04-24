package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.CategoriaDAO;
import br.com.senai.model.Categoria;

@Controller
public class CategoriaController {

	private CategoriaDAO dao;
	
	@Autowired
	public CategoriaController(CategoriaDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("novaCategoria")
	public String categoria() {
		return "formularios/cadastroCategoria";
	}
	
	@RequestMapping("cadastraCategoria")
	public String cadastra(Categoria categ) {
		dao.adicionar(categ);
		return "redirect:principal";
	}
}

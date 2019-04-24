package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.ChamadoDAO;
import br.com.senai.model.Chamado;

@Controller
public class ChamadoController {

	private ChamadoDAO dao;
	
	@Autowired
	public ChamadoController(ChamadoDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("novoChamado")
	public String chamado(Model model) {
		model.addAttribute("usuario", dao.listarUsuarios());
		model.addAttribute("equipamento", dao.listarEquipamentos());
		model.addAttribute("categoria", dao.listarCategorias());
		model.addAttribute("problema", dao.listarProblemas());
		model.addAttribute("tecnico", dao.listarTecnicos());
		return "formularios/abrirChamado";
	}
	
	@RequestMapping("cadastraChamado")
	public String cadastra(Chamado c) {
		dao.adicionar(c);
		return "redirect:principal";
	}
	
	@RequestMapping("listaChamado")
	public String listaChamado(Model model) {
		model.addAttribute("chamados", dao.listar());
		model.addAttribute("tecnico", dao.listarTecnicos());
		return "formularios/listaChamados";
	}
	
	@RequestMapping("finalizarAgora")
	public String finalizarChamado(Chamado c) {
		dao.finalizarAgora(c);
		return "redirect:listaChamado";
	}
	
	@RequestMapping("eTecnico")
	public String escolherTecnico(Chamado ch, int id, Model model) {
		model.addAttribute("chamados", dao.buscaId(id));
		model.addAttribute("tecnicos", dao.listarTecnicos());	
		return "formularios/escolherTecnico";
	}
	
	
	@RequestMapping("escolherTecnico")
	public String atualizarTecnico(Chamado ch, Model model, int id) {
		dao.escolherTecnico(ch);
		return "redirect:listaChamado";
	}
}

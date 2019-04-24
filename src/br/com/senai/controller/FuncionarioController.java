package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.FuncionarioDAO;
import br.com.senai.model.Funcionario;

@Controller
public class FuncionarioController {

	private FuncionarioDAO dao;
	
	

	@RequestMapping("principalFuncionario")
	public String execute(){
		return "principal_funcionario";
	}
	
	
	@Autowired
	public FuncionarioController(FuncionarioDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("novoFuncionario")
	public String funcionario(Model model) {
		return "formularios/cadastroFuncionario";
	}
	
	@RequestMapping("cadastraFuncionario")
	public String cadastra(Funcionario f) {
		dao.adicionar(f);
		return "redirect:principalFuncionario";
	}
	

	@RequestMapping("alterar")
	public String alterar(int id, Model model, Funcionario funcionario) {
		model.addAttribute("funcionario", dao.buscaId(id));
		return "formularios/alterarFuncionario";
	}

	@RequestMapping("alterarFuncionario")
	public String alterarFuncionario(Funcionario funcionario, Model model) {	
		dao.alterarPerfil(funcionario);
		return "redirect:principalFuncionario";

	}
	
	
	@RequestMapping("listaFuncionario")
	public String listaFuncionario(Model model) {
		model.addAttribute("funcionarios", dao.listar());
		return "formularios/listaFuncionarios";
	}
	
	@RequestMapping("alterarTec")
	public String alterarTec(int id, Model model, Funcionario funcionario) {
		model.addAttribute("funcionario", dao.buscaId(id));
		return "formularios/alterarTecnico";
	}

	@RequestMapping("alterarTecnico")
	public String alterarTecnico(Funcionario funcionario, Model model) {	
		dao.alterar(funcionario);
		return "redirect:listaFuncionario";

	}

	@RequestMapping("remover")
	public String removerFuncionario(Funcionario funcionario) {
		dao.remover(funcionario);
		return "redirect:listaFuncionario";

	}

}

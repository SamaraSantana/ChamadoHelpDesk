package br.com.senai.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.FuncionarioDAO;
import br.com.senai.model.Funcionario;

@Controller
public class LoginControllerFuncionario {
	
	private final FuncionarioDAO dao;

	@Autowired
	public LoginControllerFuncionario(FuncionarioDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("efetuaLoginFuncionario")
	public String efetuaLoginF(Funcionario funcionario, HttpSession session) {
		if (dao.existeFuncionario(funcionario) != null) {
			// ele recebe o nome do objeto
			session.setAttribute("funcionarioLogado", funcionario);
			return "principal_funcionario";
		}
		return "redirect:loginfuncionario.jsp";
	}
}

package br.com.senai.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.UsuarioDAO;
import br.com.senai.model.Usuario;

@Controller
public class LoginController {

	private final UsuarioDAO dao;
	
	@Autowired
	public LoginController(UsuarioDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario u, HttpSession session) {
		if (dao.existeUsuario(u) != null) {
			// ele recebe o nome do objeto
			session.setAttribute("usuarioLogado", u);
			return "principal";
		}
		return "redirect:index.jsp";
	}

	@RequestMapping("sair")
	public String sair(HttpSession session) {
		// para destruir a sessao
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	@RequestMapping("loginFuncionario") 
		public String loginfuncionario() {
		return "../../loginfuncionario";
	}
}

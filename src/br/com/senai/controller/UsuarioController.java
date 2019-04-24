package br.com.senai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.senai.dao.UsuarioDAO;
import br.com.senai.model.Funcionario;
import br.com.senai.model.Usuario;

@Controller
public class UsuarioController {
	private final UsuarioDAO dao;

	@Autowired
	public UsuarioController(UsuarioDAO dao) {
		this.dao = dao;
	}

		@RequestMapping("principal")
		public String execute(){
			return "principal";
		}
		

		@RequestMapping("novoUsuario")
		public String novoUsuario(Model model) {
			model.addAttribute("departamento", dao.listarDepartamento());
			return "formularios/cadastraUsuario";
		
		}


		@RequestMapping("adicionaUsuario")
		public String adiciona(Usuario usuario) {
			dao.adicionar(usuario);
			return "redirect:principalFuncionario";

		}
		
		@RequestMapping("listaUsuario")
		public String listaUsuarioo(Model model) {
			model.addAttribute("usuarios", dao.listar());
			return "formularios/listaUsuarios";
		}
		
		@RequestMapping("alterarUs")
		public String alterarUs(int id, Model model, Usuario usuario) {
			model.addAttribute("usuario", dao.buscaId(id));
			return "formularios/alterarUsuario";
		}

		@RequestMapping("alterarUsuario")
		public String alterarUsuario(Usuario usuario, Model model) {	
			dao.alterar(usuario);
			return "redirect:listaUsuario";

		}

		@RequestMapping("removerUsuario")
		public String removerUsuario(Usuario usuario) {
			dao.remover(usuario);
			return "redirect:listaUsuario";

		}

	
}

package br.com.senai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//usando isso quer dizer que o spring controla essa informa��o
@Controller
public class TesteController {
	
	//fazendo o mapeamento ,
	// ira imprimir apenas o println no console
	// o nome " " � o nome da extensao do url
	@RequestMapping("teste")
	public String execute(){
		//isso aparece no console
		//System.out.println("Ola Mundo no controller");
		//isso � o nome da pagina jsp, n�o precisa da extensao .jsp
		//ele ira retorna o que esta dentro do ok.jsp na pasta views
		return "formularios/cadastraUsuario";
	}
	
}

package br.com.senai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//usando isso quer dizer que o spring controla essa informação
@Controller
public class TesteController {
	
	//fazendo o mapeamento ,
	// ira imprimir apenas o println no console
	// o nome " " é o nome da extensao do url
	@RequestMapping("teste")
	public String execute(){
		//isso aparece no console
		//System.out.println("Ola Mundo no controller");
		//isso é o nome da pagina jsp, não precisa da extensao .jsp
		//ele ira retorna o que esta dentro do ok.jsp na pasta views
		return "formularios/cadastraUsuario";
	}
	
}

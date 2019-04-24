<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Principal</title>
</head>
<body>


<c:import url="cabecalho.jsp"></c:import>

<div id="bloco4">
<div id="imagem_bloco2">
<img alt="icon" src="resources/Admin.png">
</div>
<div class="texto_bloco4">
<h1>Seja bem vindo!</h1>

<script>

function construirArray(qtdElementos){
	this.length = qtdElementos
}

    var	arrayDia = new construirArray(7);
	arrayDia[0] = "Domingo";
	arrayDia[1] = "Segunda-Feira";
	arrayDia[2] = "Terça-Feira";
	arrayDia[3] = "Quarta-Feira";
	arrayDia[4] = "Quinta-Feira";
	arrayDia[5] = "Sexta-Feira";
	arrayDia[6] = "Sabado";

	var arrayMes = new construirArray(12);
	arrayMes[0] = "Janeiro";
	arrayMes[1] = "Fevereiro";
	arrayMes[2] = "Março";		
	arrayMes[3] = "Abril";
	arrayMes[4] = "Maio";
	arrayMes[5] = "Junho";
	arrayMes[6] = "Julho";
	arrayMes[7] = "Agosto";
	arrayMes[8] = "Setembro";
	arrayMes[9] = "Outubro";
	arrayMes[10] = "Novembro";
	arrayMes[11] = "Dezembro";

function getMesExtenso(mes){
	return this.arrayMes[mes];
}


function getDiaExtenso(dia){
	return this.arrayDia[dia];
}

function mostrarDataHora(hora, diaSemana, dia, mes, ano){
	retorno  = "&nbsp; "+hora+" ";
	retorno += "&nbsp;&nbsp;"+diaSemana+", "+dia+" de "+mes+" de "+ano;

	// atualiza o DIV com a data e hora atual
    document.getElementById("datahora").innerHTML = retorno;
}

function atualizarDataHora(){ 
    dataAtual = new Date();
	dia = dataAtual.getDate();
	diaSemana = getDiaExtenso(dataAtual.getDay());
	mes = getMesExtenso(dataAtual.getMonth());
	ano = dataAtual.getFullYear();
    hora = dataAtual.getHours();
    minuto = dataAtual.getMinutes();
    segundo = dataAtual.getSeconds();

    horaImprimivel = hora + ":" + minuto + ":" + segundo;
	mostrarDataHora(horaImprimivel, diaSemana, dia, mes, ano);
	// para ficar atualizando a página (função, tempo)
	setTimeout("atualizarDataHora()",1000);
} 

</script>
<!--onload, ao terminar de carregar todos os elementos da página, chama a função... -->
<body onload="atualizarDataHora()"> 
	<div id="datahora"></div>
	</body>
</div>
</div>

</body>

</html>
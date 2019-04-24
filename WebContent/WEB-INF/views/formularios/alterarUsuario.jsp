<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Alterar Técnico</title>
</head>
<body>

	<c:import url="../cabecalho.jsp"></c:import>

	<div id="topo_form">
		<img src="resources/fundo_cabecalho2.png" />
		<div id="formulario_funcionario">
		
			<form id="formulario"  name="formulario" action="alterarUsuario" method="post">
			<p>
				<label class="nome" for="nome">Nome:</label>
				<input type="hidden" name="id" value="${usuario.id }" />
				<input type="text" name="nome" id="nome" value="${usuario.nome }">
				
				
				<label class="email" for="email">Email:</label>
				<input type="hidden" name="id" value="${usuario.id }" />
				<input type="text" name="email" id="email" value="${usuario.email }">
				
				<label class="telefone" for="telefone">Telefone:</label>
				<input type="hidden" name="id" value="${usuario.id }" />
				<input type="text" name="telefone" id="telefone" value="${usuario.telefone }">
				</p>
				
				<p>
				<label class="login" for="login">Login:</label> <input type="hidden" name="id" value="${usuario.id }" /> 
				<input type="text" name="login" id="login" value="${usuario.login }">
					</p>
					
					<p>
				<b></b><input class="alterar" type="submit" value="Salvar"></b>
				</p>
			</form>
		</div>
	</div>
</body>
</html>
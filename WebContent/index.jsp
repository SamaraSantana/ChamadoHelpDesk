<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Inicio</title>
</head>
<body bgcolor="#ff972f">

<div id="tela_login">

<div id="cx_login">
<form id="formulario"  name="formulario"  action="efetuaLogin" method="post">

<p>
<label class="login3"for="login">Login:</label>
<input class="login3" type="text" name="login" id="login" >
</p>

<p>
<label class="senha4" for="senha">Senha:</label>
<input class="senha4" type="password" name="senha" id="senha" maxlength="8" >
</p>

<input type="submit" name="bt_gravar6" id="bt_gravar6" value="Acessar">

</form>

<h4><a href="loginFuncionario">Você é Funcionário? Clique aqui</a></h4>

</div>

<div id="img_login"><img alt="logo" src="resources/logo.png" width="600px"></div>

</div>

</body>
</html>
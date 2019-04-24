<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Inicio</title>
</head>
<body background="resources/bg.jpg" bgproperties="fixed"> 


<div id="total_login">

<div id="imagem">
<img src="resources/logo.png" />
</div>

<div id="form_login">
<form id="formulario"  name="formulario" action="efetuaLoginFuncionario" method="post">

<p>
<label for="login">Login:</label>
<input class="login2" type="text" name="login" id="login" >
</p>

<p>
<label for="senha">Senha:</label>
<input class="senha2" type="password" name="senha" id="senha" maxlength="8" >
</p>

<label class="tipo" for="tipo">Tipo:</label>
<select  class="tipo2" name="tipo" id="tipo">
<option value="Tecnico">Técnico</option>
<option value="Gestor">Gestor</option>
</select>

<p>
<h5><input type="submit" name="bt_gravar7" id="bt_gravar7" class="bt" value="Acessar"></h5>
</p> 

</form>
</div>
</div>
</body>
</html>
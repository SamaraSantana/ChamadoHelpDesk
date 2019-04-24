<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Cadastro de Funcionário </title>
</head>
<body>
	
	<script>
function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}
</script>

	<c:import url="../cabecalho.jsp"></c:import>
	<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">


<form id="formulario"  name="formulario" action="cadastraFuncionario" method="post">
<p>
<label class="nome" for="nome">Nome:</label>
<input type="text" class="nome" name="nome" maxlength="30" required autofocus >

<label class="email" for="email">Email:</label>
<input type="text" class="email" name="email" maxlength="20" required >

<label class="telefone" for="telefone">Telefone:</label>
<input type="text" class="telefone" name="telefone" OnKeyPress="formatar('####-####', this)" maxlength="09" required  />

</p>

<p>
<label class="login" for="login">Login:</label>
<input type="text" class="login" name="login" maxlength="09" required/>

<label class="senha" for="senha">Senha:</label>
<input type="password" class="senha" name="senha" maxlength="08" required/>


<label class="tipo" for="tipo">Tipo:</label>
<select class="tipo" name="tipo" id="tipo">
<option value="Tecnico">Técnico</option>
<option value="Gestor">Gestor</option>
</select>

</p>

<p>
<b></b><input type="submit" name="bt_gravar" id="bt_gravar" value="Salvar"></b>
</p> 

</form>
</div>
</div>	
	
</body>
</html>
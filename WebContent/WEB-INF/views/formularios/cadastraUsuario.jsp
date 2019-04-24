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
<title>Novo usuario</title>
</head>
<body>


<c:import url="../cabecalho.jsp"></c:import>
<div id="formulario">


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

<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">
<form id="formulario"  name="formulario"  action="adicionaUsuario" method="post">

<p>
<label class="nome" for="nome">Nome:</label>
<input  class="nome" type="text" name="nome" id="nome" maxlength="30" required autofocus />



<label class="email" for="email">Email:</label>
<input class="email" type="text" name="email" id="email" maxlength="20" required/>



<label class="telefone" for="telefone">Telefone:</label>
<input class="telefone2" type="text" name="telefone" id="telefone" OnKeyPress="formatar('####-####', this)" maxlength="09" required  />
</p>

<p>


<label class="login" for="login">Login:</label>
<input class="login" type="text" name="login" id="login" maxlength="09" required />



<label class="senha" for="senha">Senha:</label>
<input class="senha"  type="password" name="senha" id="senha" maxlength="8" required/>


<label class="departamento" for="departamento">Departamento:</label>
<select class="departamento" name="departamento">
<c:forEach items="${departamento}" var="departamento">
<option value="${departamento.id}">${departamento.nome}</option>
</c:forEach>
</select>

<p>
<b></b><input type="submit" name="bt_gravar" id="bt_gravar" value="Salvar"></b>
</p> 

</form>
</div>
</div>
</div>
</body>
</html>
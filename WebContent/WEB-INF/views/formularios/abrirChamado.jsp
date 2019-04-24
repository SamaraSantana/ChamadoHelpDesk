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
<title>Abrir Chamado</title>
</head>
<body>
<c:import url="../cabecalho.jsp"></c:import>
<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">

<form  id="formulario"  name="formulario" action="cadastraChamado" method="post">
<label class="descricao" for="descricao">Descrição:</label>
<input type="text" name="descricao" maxlength="30" required/> 

<label class="usuario" for="usuario">Usuário:</label>
<select class="usuario" name="usuario"  required >
<c:forEach items="${usuario}" var="usuario">
<option value="${usuarioLogado.nome}">${usuarioLogado.nome}
</c:forEach>
</select>


<label class="problema" for="problema">Problema:</label>
<select class="problema" name="problema"  required>
<c:forEach items="${problema}" var="problema">
<option value="${problema.descricao}">${problema.descricao}</option>
</c:forEach>
</select>


<p>
<label class="categoria" for="categoria">Categoria:</label>
<select class="categoria" name="categoria"  required>
<c:forEach items="${categoria}" var="categoria">
<option value="${categoria.descricao}">${categoria.descricao}</option>
</c:forEach>
</select>



<label class="equipamento" for="equipamento">Equipamento:</label>
<select class="equipamento" name="equipamento"  required>
<c:forEach items="${equipamento}" var="equipamento">
<option value="${equipamento.nome}">${equipamento.nome}</option>
</c:forEach>
</select>

<label class="serie" for="serie">Nº Série:</label>
<input class="serie" type="text" name="serie" maxlength="8"  required>
</p>

<input type="hidden" name="status" value="Aberto">

<p>
<b></b><input type="submit" name="bt_gravar" id="bt_gravar" value="Salvar"></b>
</p> 
</form>
</div>
</div>
</body>
</html>
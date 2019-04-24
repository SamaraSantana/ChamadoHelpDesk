<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="resources/geral.css">
<title>Técnico</title>
</head>
<body>

<c:import url="../cabecalho.jsp"></c:import>

<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">
<form id="formulario"  name="formulario" action="escolherTecnico" method="get">
<input type="hidden" name="id" value="${chamados.id}" /><br />
<label>Técnico:</label>
<select name="tecnico">
<c:forEach items="${tecnicos}" var="tecnicos">
<option value="${tecnicos.login}">${tecnicos.login}</option>
</c:forEach>
</select>
<p>

<input type="submit" class="bt2" value="Ok">
</p>
</form>
</div>
</div>
</body>
</html>
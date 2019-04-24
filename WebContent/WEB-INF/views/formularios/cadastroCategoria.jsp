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
<title>Cadastro de Categoria</title>
</head>
<body>
<c:import url="../cabecalho.jsp"></c:import>
<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">

<form action="cadastraCategoria" method="post">
<p>
<label class="descricao" for="descricao">Categoria:</label>
<input  class="descricao" type="text" name="descricao" id="descricao" maxlength="30" required autofocus />

<p>
<b></b><input type="submit" name="bt_gravar4" id="bt_gravar4" value="Salvar"></b>
</p> 

</form>
</div>
</div>
</body>
</html>
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
<title>Lista de Usuarios</title>
</head>
<body>


<c:import url="../cabecalho.jsp"></c:import>

<div id="topo_form">
<img src="resources/fundo_cabecalho2.png" />
<div id="formulario_funcionario">

<div class="lista_chamado">
<table >
<tr>
<td>ID</td>
<td>Nome</td>
<td>Email</td>
<td>Telefone</td>
<td>Login</td>
<td>Remover</td>
<td>Alterar</td>


</tr>

<c:forEach items="${usuarios }" var="usuarios">


<tr>
<td>${usuarios.id}</td>
<td>${usuarios.nome}</td>
<td>${usuarios.email}</td>
<td>${usuarios.telefone}</td>
<td>${usuarios.login}</td>


<td><a href="removerUsuario?id=${usuarios.id}"><img src="resources/lixeira.png"/></a></td>






<td><a href="alterarUs?id=${usuarios.id}"><img src="resources/edit.png"></a>
</tr>


</c:forEach>

</table>


</div>
</div>
</div>
</body>
</html>
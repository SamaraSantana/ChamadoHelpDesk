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
<title>Lista de Funcionarios</title>
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

<c:forEach items="${funcionarios }" var="funcionarios">
<c:if test="${funcionarioLogado.nome != funcionarios.nome}">

<tr>
<td>${funcionarios.id}</td>
<td>${funcionarios.nome}</td>
<td>${funcionarios.email}</td>
<td>${funcionarios.telefone}</td>
<td>${funcionarios.login}</td>



<td><c:if test="${funcionarios.tipo != 'Gestor' and funcionarios.tipo != 'tecnico' }">
<a href="remover?id=${funcionarios.id}"><img src="resources/lixeira.png"/></a></c:if></td>






<td><c:if test="${funcionarios.tipo != 'Gestor' and funcionarios.tipo != 'tecnico' }">

<a href="alterarTec?id=${funcionarios.id}"><img src="resources/edit.png"></a></c:if></td>
</tr>

</c:if>
</c:forEach>

</table>


</div>
</div>
</div>
</body>
</html>
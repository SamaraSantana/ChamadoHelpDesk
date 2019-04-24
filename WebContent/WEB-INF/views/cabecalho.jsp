<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="topo">
	<div id="imagem_topo">
		<img alt="logo" src="resources/logo.png">
	</div>


	<div id="texto">
		<c:if test="${funcionarioLogado != null and usuarioLogado == null}">
			<b>Seja Bem vindo ${funcionarioLogado.login }</b>
		</c:if>
		<c:if test="${usuarioLogado != null and funcionarioLogado == null}">
			<b>Seja Bem vindo ${usuarioLogado.login }</b>
		</c:if>
	</div>
	<c:if test="${funcionarioLogado.tipo == 'Gestor'}">
		<div class="opcao">
			<b><a href="alterar?id=${funcionarioLogado.id}"
				${funcionarioLogado.login }>Editar perfil</a></b>

		</div>
	</c:if>

	<div class="opcao">
		<b><a href="sair">Sair</a></b>
	</div>
</div>


<div id="menu">
	<div class="icones">
		<c:if test="${funcionarioLogado != null}">
			<a href="principalFuncionario">Home</a>
		</c:if>
		<c:if test="${usuarioLogado != null}">
			<a href="principal">Home</a>
		</c:if>
	</div>

	<c:if test="${funcionarioLogado.tipo == 'Gestor'}">
		<div class="icones">
			<a href="novoUsuario">Novo Usuário</a>

		</div>

	</c:if>

	<c:if test="${usuarioLogado != null}">
		<div class="icones">
			<a href="novoChamado">Abrir Chamado</a>

		</div>
	</c:if>


	<div class="icones">
		<c:if test="${funcionarioLogado != null}">
			<a href="listaChamado">Chamados</a>
		</c:if>
		
		<c:if test="${usuarioLogado != null}">
			<a href="listaChamado">Chamados</a>
		</c:if>
	</div>

	<c:if test="${funcionarioLogado.tipo == 'Gestor'}">
		<div class="icones">
			<a href="novoFuncionario">Novo Funcionário</a>

		</div>

		<div class="icones">
			<c:if test="${funcionarioLogado.tipo == 'Gestor'}">
				<a href="listaFuncionario">Funcionarios </a>
			</c:if>
		</div>

		<div class="icones">
			<c:if test="${funcionarioLogado.tipo == 'Gestor'}">
				<a href="listaUsuario">Usuarios </a>
			</c:if>
		</div>

		<div class="icones">
			<a href="novoDepartamento">Novo Departamento</a>

		</div>
		<div class="icones">
			<a href="novoEquipamento">Novo Equipamento</a>

		</div>

		<div class="icones">
			<a href="novoProblema">Problemas</a>

		</div>

		<div class="icones">
			<a href="novaCategoria">Categorias</a>

		</div>
	</c:if>
</div>



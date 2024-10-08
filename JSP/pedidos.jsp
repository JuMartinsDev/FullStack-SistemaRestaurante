<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.fiap.jdbc.model.Cliente"%>
<%@ page import="br.com.fiap.jdbc.model.ItemPedido"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gerenciar Pedidos</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
html, body {
	height: 100%;
	margin: 10;
	padding: 0;
}

body {
	background-color: #d3d3d3;
	font-family: Arial, sans-serif;
	display: flex;
	flex-direction: column;
}

header {
	background-color: #4b5320;
	color: white;
	padding: 40px 0;
	text-align: center;
	border-radius: 10px;
}

.container {
	flex: 1;
	margin-top: 50px;
}

footer {
	background-color: #4b5320;
	color: white;
	text-align: center;
	padding: 10px;
	width: 100%;
}

.card {
	border-radius: 10px;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 2);
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 20px;
	transition: 0.3s all ease;
}

.card:hover {
	transform: scale(1.1);
}

.card-header {
	background-color: #007bff;
	color: #fff;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
	margin-top: 20px;
	margin-bottom: 20px;
}

.logo {
	max-width: 150px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<header>
		<h1>Gerenciar Pedidos</h1>
	</header>

	<div class="container">
		<form action="cozinha.jsp" method="post">
			<div class="form-group">

				<label for="nomeCliente">Nome do Cliente</label> <select
					id="nomeCliente" name="nomeCliente" class="form-control" required>
					<option value="">Selecione um cliente</option>
					<%
					// Instancia o DAO e obtém a lista de clientes
					ClienteDAO clienteDAO = new ClienteDAO();
					List<Cliente> listaClientes = clienteDAO.listarTodos();

					// Preenche o dropdown com os clientes
					for (Cliente cliente : listaClientes) {
					%>
					<option value="<%=cliente.getNome()%>"><%=cliente.getNome()%></option>
					<%
					}
					%>
				</select>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<img src="./img/SucoVerde.jpg" class="card-img-top" alt="Item 1">
						<div class="card-body">
							<h5 class="card-title">Suco Verde</h5>
							<p class="card-text">Água de coco, couve, maçã, salsão e
								pepino.</p>
							<p class="card-text">R$ 19,00</p>
							<label for="quantidadeSucoVerde">Quantidade:</label> <input
								type="number" id="quantidadeSucoVerde"
								name="quantidade_SucoVerde" min="0" value="0"
								class="form-control" /> 
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="./img/salada.jpg" class="card-img-top" alt="Item 2">
						<div class="card-body">
							<h5 class="card-title">Salada de Legumes</h5>
							<p class="card-text">Couve kale e melado, abóbora assada,
								beterraba com especiarias.</p>
							<p class="card-text">R$ 39,00</p>
							<label for="quantidadeBowlFrutas">Quantidade:</label> <input
								type="number" id="quantidadeBowlFrutas"
								name="quantidade_BowlFrutas" min="0" value="0"
								class="form-control" /> 
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="./img/crudoAtum.jpg" class="card-img-top" alt="Item 3">
						<div class="card-body">
							<h5 class="card-title">Crudo de Atum</h5>
							<p class="card-text">Pão levain com pasta de avocado
								temperada, acompanhado de coalhada.</p>
							<p class="card-text">R$ 29,00</p>
							<label for="quantidadeAvocadoToast">Quantidade:</label> <input
								type="number" id="quantidadeAvocadoToast"
								name="quantidade_AvocadoToast" min="0" value="0"
								class="form-control" /> 
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<img src="./img/cogumelosToast.jpg" class="card-img-top"
							alt="Item 4">
						<div class="card-body">
							<h5 class="card-title">Cogumelos Toast</h5>
							<p class="card-text">Pão levain, mix de cogumelos, queijo de
								ovelha boursin, pimenta calabresa, cebolete e azeite.</p>
							<p class="card-text">R$ 44,00</p>
							<label for="quantidadeCogumelosToast">Quantidade:</label> <input
								type="number" id="quantidadeCogumelosToast"
								name="quantidade_CogumelosToast" min="0" value="0"
								class="form-control" /> 
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="./img/avoToast.jpg" class="card-img-top" alt="Item 5">
						<div class="card-body">
							<h5 class="card-title">Avocado Toast</h5>
							<p class="card-text">Com pasta de avocado temperada, picles
								de cebola, óleo de jalapeño e gengibre e molho especial.</p>
							<p class="card-text">R$ 44,00</p>
							<label for="quantidadeCrudoAtum">Quantidade:</label> <input
								type="number" id="quantidadeCrudoAtum"
								name="quantidade_CrudoAtum" min="0" value="0"
								class="form-control" /> 
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="./img/acaiBowl.jpg" class="card-img-top" alt="Item 6">
						<div class="card-body">
							<h5 class="card-title">Bowl de Frutas</h5>
							<p class="card-text">
								Morango, mamão, framboesa, gengibre e
								limão.</p>
							<p class="card-text">R$ 45,00</p>
							<label for="quantidadeSaladaLegumes">Quantidade:</label> <input
								type="number" id="quantidadeSaladaLegumes"
								name="quantidade_SaladaLegumes" min="0" value="0"
								class="form-control" />

						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-outline-success mt-4 mb-4">Enviar
				para a Cozinha</button>
		</form>
	</div>

	<footer>
		<p>&copy; 2024 Sistema de Restaurante</p>
	</footer>
</body>
</html>

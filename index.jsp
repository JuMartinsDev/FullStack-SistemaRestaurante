<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>Sistema de Restaurante</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
html, body {
	height: 100%; /* Garante que o body ocupe toda a altura da tela */
	margin: 0; /* Remove margens */
	padding: 0; /* Remove padding */
}

body {
	background:
		url('https://images.pexels.com/photos/27626762/pexels-photo-27626762/free-photo-of-restaurante-mesa-arquitetura-luxo.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
		no-repeat center center fixed;
	background-size: cover; /* Cobrir toda a tela */
	display: flex;
	flex-direction: column;
	/* Garante que o conteúdo e o footer estejam alinhados verticalmente */
}

.overlay {
	position: absolute; /* Adiciona a posição absoluta para sobreposição */
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.3); /* Sobreposição escura */
	z-index: 1; /* Para que a sobreposição fique acima do fundo */
}

footer {
    background-color: #4b5320; /* Cor de fundo do rodapé */
    color: white; /* Cor do texto */
    text-align: center; /* Centraliza o texto */
    padding: 5px; /* Espaçamento superior e inferior */
    width: 100%; /* Ocupa toda a largura da tela */
    position: fixed; /* Fixa o rodapé na parte inferior da tela */
    bottom: 0; /* Posiciona o rodapé na parte inferior */
    left: 0; /* Garante que comece do lado esquerdo */
    box-sizing: border-box; /* Inclui padding na largura total */
    z-index: 2; /* Garante que fique acima de outros elementos, se necessário */
}


.header {
	background-color: #4b5320; /* Cor do cabeçalho */
	color: #FFFFFF; /* Texto branco */
	padding: 20px;
	position: relative;
	width: 100%; /* Faz o cabeçalho ocupar toda a largura */
	left: 0; /* Garante que comece do lado esquerdo */
	top: 0; /* Garante que fique no topo */
	box-sizing: border-box; /* Inclui padding na largura total */
}

.container {
	flex: 1; /* Faz o container ocupar o espaço restante da tela */
	margin-top: 70px; /* Ajuste para o espaço do cabeçalho */
	margin-bottom: 50px;
	position: relative; /* Para posicionar os filhos relativos */
	text-align: center; /* Centraliza o texto */
	z-index: 2; /* Garante que o conteúdo fique acima da sobreposição */
}

.logo {
	max-width: 80px; /* Limita a largura do logo */
	margin-bottom: 10px; /* Espaço abaixo da imagem */
	border-radius: 50%; /* Arredonda a imagem */
}
</style>
</head>
<body>

	<div class="overlay"></div>
	<!-- Camada de sobreposição cinza -->

	<div class="header text-center">
		<img src="./img/FloraTech.png" alt="Logo da FloraTech" class="logo">

		<h1>Gerenciamento de Restaurante</h1>
	</div>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mb-4 h-100">
					<div class="card-header">Gerenciar Clientes</div>
					<div class="card-body">

						<a href="clientes.jsp" class="btn btn-outline-success btn-block">Criar
							Cliente</a> <a href="listaClientes.jsp"
							class="btn btn-light btn-block">Lista de Clientes</a>
					</div>
				</div>
			</div>

		</div>

		<footer class="text-center">
			<p>&copy; 2024 Sistema de Restaurante. Todos os direitos
				reservados.</p>
		</footer>
</body>
</html>


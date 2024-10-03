<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciar Clientes</title>
    <!-- Incluindo Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background-color: #d3d3d3;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #4b5320;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        .container {
            flex: 1;
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
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 600px;
        }

        .logo {
            max-width: 150px;
            margin-bottom: 20px;
        }

        #message {
            display: none;
        }
    </style>
   
</head>
<body>
    <header>
        <h1>Gerenciar Clientes</h1>
    </header>

    <div class="container mt-4">
        <div id="message"></div> <!-- Div para mensagens -->

        <!-- Formulário de Adicionar Clientes -->
        <div class="card mb-4">
            <div class="card-header">
                <h5>Adicionar Novo Cliente</h5>
            </div>
            <div class="card-body">
                <form action="ClienteServlet?action=salvar" method="post">
                    <div class="mb-3">
                        <label for="nome" class="form-label">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="telefone" class="form-label">Telefone (Formato: (11) 93847-5877)</label>
                        <input type="text" class="form-control" id="telefone" name="telefone" required pattern="\d{11}">
                    </div>
                    <button type="submit" class="btn btn-outline-success">Salvar Cliente</button>
                    <button type="button" class="btn btn-outline-secondary" onclick="window.location.href='index.jsp'">Voltar para Início</button>
                   
                </form>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <p>&copy; 2024 Restaurante Flora. Todos os direitos reservados.</p>
        </div>
    </footer>
    

    <!-- Bootstrap JS e Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

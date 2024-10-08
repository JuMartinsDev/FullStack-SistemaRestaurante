<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="br.com.fiap.jdbc.model.Cliente"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lista de Clientes</title>
<!-- Incluindo Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: #f7f7f7;
    font-family: Arial, sans-serif;
    padding: 20px;
}

.container {
    margin-top: 30px;
}

.btn-historico {
    margin-right: 10px;
}

table {
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}
.table thead {
	background-color: #4b5320;
}
.table th {
	color:white;
}

</style>
</head>
<body>

<div class="container">
    <h1 class="text-center mb-4">Lista de Clientes</h1>

    <table class="table table-hover">
        <thead class="table">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <%
            //Instancia o DAO e obtém a lista de clientes
            ClienteDAO clienteDAO = new ClienteDAO();
            List<Cliente> listaClientes = clienteDAO.listarTodos();

            //Itera sobre a lista de clientes e exibe cada um deles
            for (Cliente cliente : listaClientes) {
            %>
            <tr>
                <td><%=cliente.getIdCliente()%></td>
                <td><%=cliente.getNome()%></td>
                <td><%=cliente.getEmail()%></td>
                <td><%=cliente.getTelefone()%></td>
                <td>
                    <!-- Botão para fazer de pedido -->
                    <a href="pedidos.jsp?idCliente=<%=cliente.getIdCliente()%>" class="btn btn-outline-success btn-historico">Fazer Pedido</a>
                    
                    <!-- Botão para editar cliente -->
                    <a href="editarCliente.jsp?idCliente=<%=cliente.getIdCliente()%>" class="btn btn-outline-warning btn-historico">Editar</a>
                    
                    <!-- Botão para excluir cliente -->
                    <form action="excluirCliente.jsp" method="post" style="display:inline;">
                        <input type="hidden" name="idCliente" value="<%=cliente.getIdCliente()%>">
                        <button type="submit" class="btn btn-outline-danger btn-historico" onclick="return confirm('Tem certeza que deseja excluir este cliente?');">Excluir</button>
                    </form>
                </td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>

    <!-- Botão para voltar ao início -->
    <a href="index.jsp" class="btn btn-outline-secondary mt-4">Voltar para Início</a>
</div>

<!-- Bootstrap JS e Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="br.com.fiap.jdbc.model.Cliente"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Editar Cliente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Editar Cliente</h1>

    <%
        // Obter o idCliente da requisição
        String idClienteParam = request.getParameter("idCliente");
        int idCliente = Integer.parseInt(idClienteParam);

        // Instanciar o DAO e buscar o cliente
        ClienteDAO clienteDAO = new ClienteDAO();
        Cliente cliente = clienteDAO.buscarPorId(idCliente);

        if (cliente != null) {
    %>
    <form action="atualizarCliente.jsp" method="post">
        <input type="hidden" name="idCliente" value="<%= cliente.getIdCliente() %>">
        
        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" id="nome" name="nome" value="<%= cliente.getNome() %>" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="<%= cliente.getEmail() %>" required>
        </div>

        <div class="mb-3">
            <label for="telefone" class="form-label">Telefone</label>
            <input type="text" class="form-control" id="telefone" name="telefone" value="<%= cliente.getTelefone() %>" required>
        </div>

        <button type="submit" class="btn btn-primary">Atualizar Cliente</button>
    </form>
    <%
        } else {
    %>
    <div class="alert alert-danger">Cliente não encontrado.</div>
    <%
        }
    %>
</div>

 <footer class="text-center">
        <p>&copy; 2024 Sistema de Restaurante. Todos os direitos reservados.</p>
    </footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

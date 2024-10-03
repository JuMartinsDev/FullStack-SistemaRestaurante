<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Apagar Cliente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Apagar Cliente</h1>
    <%
        String idClienteParam = request.getParameter("idCliente");
        ClienteDAO clienteDAO = new ClienteDAO();

        try {
            if (idClienteParam != null) {
                int idCliente = Integer.parseInt(idClienteParam);
                clienteDAO.excluir(idCliente);
                out.println("<div class='alert alert-success'>Cliente apagado com sucesso!</div>");
            } else {
                out.println("<div class='alert alert-danger'>Erro: ID do cliente não fornecido.</div>");
            }

        } catch (Exception e) {
            out.println("<div class='alert alert-danger'>Erro: " + e.getMessage() + "</div>");
        }
    %>
    <a href="listaCliente.jsp" class="btn btn-secondary">Voltar para a Lista de Clientes</a>
    
     <footer class="text-center">
        <p>&copy; 2024 Sistema de Restaurante. Todos os direitos reservados.</p>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

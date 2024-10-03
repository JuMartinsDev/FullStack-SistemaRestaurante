<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="br.com.fiap.jdbc.model.Cliente"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="java.util.logging.Level"%>
<%@ page import="java.util.logging.Logger"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Atualizar Cliente</title>
</head>
<body>
<%
    String idClienteParam = request.getParameter("idCliente");
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");

    // Verifica se todos os parâmetros estão presentes
    if (idClienteParam != null && nome != null && email != null && telefone != null) {
        int idCliente = Integer.parseInt(idClienteParam);

        // Instanciar o DAO e atualizar o cliente
        ClienteDAO clienteDAO = new ClienteDAO();
        Cliente cliente = new Cliente();
        cliente.setIdCliente(idCliente);
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setTelefone(telefone);

        try {
            clienteDAO.atualizar(cliente);
            // Redirecionar para listaClientes.jsp
            response.sendRedirect("listaClientes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<div class='alert alert-danger'>Erro ao atualizar o cliente.</div>");
        }
    } else {
        out.println("<div class='alert alert-danger'>Dados incompletos.</div>");
    }
%>

 <footer class="text-center">
        <p>&copy; 2024 Sistema de Restaurante. Todos os direitos reservados.</p>
    </footer>
</body>
</html>

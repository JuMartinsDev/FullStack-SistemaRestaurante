<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Excluir Cliente</title>
</head>
<body>
<%
    // Obter o idCliente da requisição
    String idClienteParam = request.getParameter("idCliente");

    if (idClienteParam != null) {
        int idCliente = Integer.parseInt(idClienteParam);
        
        // Instanciar o DAO e excluir o cliente
        ClienteDAO clienteDAO = new ClienteDAO();
        try {
            clienteDAO.excluir(idCliente);
            // Redirecionar para listaClientes.jsp
            response.sendRedirect("listaClientes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<div class='alert alert-danger'>Erro ao excluir o cliente.</div>");
        }
    } else {
        out.println("<div class='alert alert-danger'>ID do cliente não foi fornecido.</div>");
    }
%>

 <footer class="text-center">
        <p>&copy; 2024 Sistema de Restaurante. Todos os direitos reservados.</p>
    </footer>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="br.com.fiap.jdbc.dao.ClienteDAO"%>
<%@ page import="br.com.fiap.jdbc.model.Cliente"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cozinha</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
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
            padding: 20px 0;
            text-align: center;
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
        .table {
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
        }
        .table thead {
            background-color: #4b5320;
            color: #fff;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            margin-top: 20px;
        }
        .btn-voltar {
            margin-top: 20px;
        }
        .logo {
            max-width: 150px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Cozinha</h1>
    </header>

    <div class="container">
       

        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>Nome do Cliente</th>
                    <th>Item</th>
                    <th>Quantidade</th>
                </tr>
            </thead>
            <tbody>
                <%
                String nomeCliente = request.getParameter("nomeCliente");
                Map<String, Integer> pedidos = new HashMap<>();

                //Coleta os itens e quantidades
                Enumeration<String> parametros = request.getParameterNames();
                while (parametros.hasMoreElements()) {
                    String param = parametros.nextElement();
                    if (param.startsWith("quantidade_")) {
                        String item = param.substring("quantidade_".length());
                        int quantidade = Integer.parseInt(request.getParameter(param));
                        if (quantidade > 0) {
                            pedidos.put(item, quantidade);
                        }
                    }
                }

                // Exibe os pedidos
                for (Map.Entry<String, Integer> pedido : pedidos.entrySet()) {
                %>
                <tr>
                    <td><%= nomeCliente %></td>
                    <td><%= pedido.getKey() %></td>
                    <td><%= pedido.getValue() %></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-outline-secondary btn-voltar">Voltar</a>
    </div>

    <footer>
        <p>&copy; 2024 Sistema de Restaurante</p>
    </footer>
</body>
</html>

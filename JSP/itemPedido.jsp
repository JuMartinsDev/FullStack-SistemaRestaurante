<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Selecionar Itens do Pedido</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card {
            margin: 10px;
        }
        .card-img-top {
            height: 150px;
            object-fit: cover;
        }
        
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1>Selecione os Itens do Pedido</h1>
        <div class="row">
            <c:forEach var="item" items="${itens}">
                <div class="col-md-4">
                    <div class="card">
                        <img src="${item.imagemUrl}" class="card-img-top" alt="${item.nome}">
                        <div class="card-body">
                            <h5 class="card-title">${item.nome}</h5>
                            <p class="card-text">Preço: R$ ${item.preco}</p>
                            <form action="PedidoServlet" method="post">
                                <input type="hidden" name="itemId" value="${item.id}">
                                <button type="submit" class="btn btn-primary">Selecionar</button>
                            </form>
                        </div>
                    </div>
                </div>
                <c:if test="${(item.index + 1) % 3 == 0}">
                    </div><div class="row">
                </c:if>
            </c:forEach>
        </div>
      
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

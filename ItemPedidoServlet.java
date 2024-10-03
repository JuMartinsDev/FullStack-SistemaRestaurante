package br.com.fiap.jdbc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.jdbc.dao.ItemPedidoDAO;
import br.com.fiap.jdbc.dao.PedidoDAO;
import br.com.fiap.jdbc.model.ItemPedido;
import br.com.fiap.jdbc.model.Pedido;

@WebServlet("/ItemPedidoServlet")
public class ItemPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int pedidoId = Integer.parseInt(request.getParameter("pedido"));

        if (action != null && action.equals("listar")) {
            listarItensPedido(request, response, pedidoId);
        } else {
            response.sendRedirect("PedidoServlet?action=listar");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int pedidoId = Integer.parseInt(request.getParameter("pedido"));

        if (action != null && action.equals("salvar")) {
            salvarItemPedido(request, response, pedidoId);
        } else {
            response.sendRedirect("PedidoServlet?action=listar");
        }
    }

    private void listarItensPedido(HttpServletRequest request, HttpServletResponse response, int pedidoId)
            throws ServletException, IOException {
        ItemPedidoDAO itemPedidoDAO = new ItemPedidoDAO();
        List<ItemPedido> itensPedido = itemPedidoDAO.listar(pedidoId);

        request.setAttribute("itensPedido", itensPedido);
        RequestDispatcher dispatcher = request.getRequestDispatcher("itens_pedido.jsp");
        dispatcher.forward(request, response);
    }


    private void salvarItemPedido(HttpServletRequest request, HttpServletResponse response, int pedidoId)
            throws ServletException, IOException {
        String nomeItem = request.getParameter("nomeItem");
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        double precoItem = Double.parseDouble(request.getParameter("precoItem"));
        String descricao = request.getParameter("descricao");
        pedidoId = Integer.parseInt(request.getParameter("pedido")); // Obtém o ID do pedido

        ItemPedido item = new ItemPedido();
        item.setNomeItem(nomeItem);
        item.setQuantidade(quantidade);
        item.setPrecoItem(precoItem);
        item.setDescricao(descricao);

        ItemPedidoDAO itemPedidoDAO = new ItemPedidoDAO();
        itemPedidoDAO.salvar(item, pedidoId);

        //Após salvar o item, redireciona para a página da cozinha com os detalhes do pedido
        List<ItemPedido> itensPedido = itemPedidoDAO.listar(pedidoId);
        request.setAttribute("itensPedido", itensPedido);

        //Redireciona para cozinha.jsp, passando o pedido e itens para serem exibidos
        RequestDispatcher dispatcher = request.getRequestDispatcher("cozinha.jsp");
        dispatcher.forward(request, response);
    }

}
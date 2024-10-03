package br.com.fiap.jdbc.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.jdbc.dao.ClienteDAO;
import br.com.fiap.jdbc.dao.PedidoDAO;
import br.com.fiap.jdbc.model.Cliente;
import br.com.fiap.jdbc.model.Pedido;

@WebServlet("/PedidoServlet")
public class PedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        response.sendRedirect("index.jsp");
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("salvar".equals(action)) {
            salvarPedido(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }
    }


    private void salvarPedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int clienteId = Integer.parseInt(request.getParameter("cliente"));
            Date dataPedido = new Date();

            //Verifica se o cliente já existe no banco de dados
            ClienteDAO clienteDAO = new ClienteDAO();
            Cliente cliente = clienteDAO.buscarPorId(clienteId);

            if (cliente == null) {
                //Se o cliente não existir, cria um novo
                cliente = new Cliente();
                cliente.setIdCliente(clienteId);
                clienteDAO.inserir(cliente); //Insere o cliente no banco
            }

            //Cria o pedido
            Pedido pedido = new Pedido();
            pedido.setCliente(cliente);
            pedido.setDataPedido(dataPedido);

            //Salva o pedido no banco de dados
            PedidoDAO pedidoDAO = new PedidoDAO();
            pedidoDAO.inserir(pedido);

            //Redireciona para a página de confirmação do pedido em preparo
            request.setAttribute("pedidoId", pedido.getIdPedido());
            

        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Erro ao salvar o pedido. Cliente inválido.");
        }
    }

}

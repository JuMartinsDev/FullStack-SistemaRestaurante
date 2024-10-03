package br.com.fiap.jdbc.model;

public class ItemPedido {

    private int idItemPedido;
    private String nomeItem;
    private int quantidade;
    private Pedido pedido;

    public ItemPedido() {
    }

    // Construtor com parâmetros
    public ItemPedido(int idItemPedido, String nomeItem, int quantidade, double precoItem, String descricao,
                      Pedido pedido) {
        this.idItemPedido = idItemPedido;
        this.nomeItem = nomeItem;
        this.quantidade = quantidade;
        this.pedido = pedido;
    }

    // Getters e Setters
    public int getIdItemPedido() {
        return idItemPedido;
    }

    public void setIdItemPedido(int idItemPedido) {
        this.idItemPedido = idItemPedido;
    }

    public String getNomeItem() {
        return nomeItem;
    }

    public void setNomeItem(String nomeItem) {
        this.nomeItem = nomeItem;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }
}


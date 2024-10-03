package br.com.fiap.jdbc.model;

import java.util.List;

public class Cliente {

	private int idCliente;
	private String nome;
	private String email;
	private String telefone;
	private List<Pedido> pedidos;

	public Cliente() {
    }

    // Construtor com todos os atributos
    public Cliente(int idCliente, String nome, String email, String telefone, List<Pedido> pedidos) {
        this.idCliente = idCliente;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.pedidos = pedidos;
    }

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public List<Pedido> getPedidos() {
		return pedidos;
	}

	public void setPedidos(List<Pedido> pedidos) {
		this.pedidos = pedidos;
	}

}

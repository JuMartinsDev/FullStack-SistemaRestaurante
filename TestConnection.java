package br.com.fiap.jdbc.uteis;

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        Connection connection = ConnectionFactory.getConnection();
        if (connection != null) {
            System.out.println("Conexão bem-sucedida!");
        } else {
            System.out.println("Falha na conexão.");
        }
    }
}

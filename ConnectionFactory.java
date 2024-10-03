package br.com.fiap.jdbc.uteis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private static Connection connection;
    private final static String URL = "jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL";
    private final static String USER = "RM98601";
    private final static String PASSWORD = "030505";
       
    public static Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
        try {
        	connection = DriverManager.getConnection(URL, USER, PASSWORD);
        }catch(SQLException e) {
        	throw new RuntimeException("Erro ao conectar ao banco de dados",e);
        }
        return connection;
    }

    public static void fechar(Connection conexao) {
    	if(conexao != null) {
    		try {
    			conexao.close();
    		}catch(SQLException e) {
    			System.out.println("Erro ao fechar: "+e.getMessage());
    		}
    	}
    }
   
}

   


package Controle;

import java.sql.*;
import javax.swing.JOptionPane;

public class Conexao {
    
    // metodo responsavel por estabelecer  a conexao com o banco infox
        
    java.sql.Connection conexao = null;
    
     
    // metodo responsavel por estabelecer  a conexao com o banco 
    public static Connection conector(){
        
        java.sql.Connection conexao = null;
        // a linha abaixo chama o driver
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando as informacoes referente ao banco
        String url = "jdbc:mysql://localhost:3306/consultorio";
        String user = "root";
        String password = ""; 
        // A linha abaixo estabelece a conexao com o banco
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url,user,password);
            return conexao; 
            
            } catch (Exception e) {
                return null; // caso ocorra algum erro de coneccao ele mostrara no console
        }
    }

    public Conexao getConexao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
     public void desconectar(){
        try{
            System.out.println("Fechando Conexao");
            conexao.close();
        }catch(Exception ex){}
    }

 
}

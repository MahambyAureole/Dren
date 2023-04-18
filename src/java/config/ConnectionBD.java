/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.*;


/**
 *
 * @author Mahamby
 */
public class ConnectionBD {
    private static String jdbcURL="jdbc:mysql://localhost:3306/gestion_enseignants?useSSL=false", 
            jdbcUsername="root", 
            jdbcPassword="";
    public static Connection getConnection() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(jdbcURL, jdbcUsername,jdbcPassword);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;
/**
 *
 * @author salas
 */
public class Conex {
    public Conex(){
    
    }
    
    public Connection getConnection(){
        Connection link = null;
        String url = "jdbc:mysql://localhost:3306/mvcjava";
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            link = DriverManager.getConnection(url, "root", "");
        }catch(Exception e){
            System.out.println("You've got an error");
            System.out.println("Error: " + e.getMessage());
        }
        
        return link;
    }
    
}

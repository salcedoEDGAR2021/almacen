package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    static String driver = "com.mysql.cj.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/almacen_db";
    static String usuario = "root";
    static String password = "";
    
    protected Connection conn = null;

    public ConexionDB() {
        try{
           Class.forName(driver);
           conn = DriverManager.getConnection(url,usuario,password);
        }catch (ClassNotFoundException e){
            System.out.println("Error de conexion "+e.getMessage());
        }catch(SQLException ex){
            System.out.println("Error de SQL "+ex.getMessage());
        }
    }
    public Connection conectar()
    {
        return conn;
    }
    public void desconectar()
    {
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerra:"+ex.getMessage());
        }
    }           
}


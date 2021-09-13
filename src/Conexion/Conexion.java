
package Conexion;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    
    public static Connection con;
    
    @SuppressWarnings("empty-statement")
    public Connection conectar(){ 
        try {
            String bd = "db_sofka"; //nombre de la Base de Datos
            String direccion="jdbc:mysql://localhost:3306/"; //direccion de DB
            String user="root"; //usuario de DB
            String password="123456"; //contraseña de DB
            Class.forName("com.mysql.jdbc.Driver");
            String databaseURL = direccion + bd; //concatenamos direccion y nombre de DB
            con = java.sql.DriverManager.getConnection(databaseURL, user,password); //entregamos todos los datos a la conn
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return con;
    }
    public void cerrar() throws SQLException{
        if (con != null) {
            if (!con.isClosed()) {
                con.close();
            }
        }
    }    
}  


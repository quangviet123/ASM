package Dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
public class DBContext {
    public Connection connection;
    public DBContext() {
        
        String url = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=EmployeeManagement;encrypt=false";
        String username = "viet123";
        String password = "1234";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            connection = DriverManager.getConnection(url, "viet123", "1234");
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public static void main(String[] args) {
        String user = "viet123";
        String pass = "1234";
        String url = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=EmployeeManagement;trustServerCertificate=true;";

        try (Connection co = DriverManager.getConnection(url, user, pass)) {
            System.out.println("finish connection data base");
        } catch (SQLException ex) {
            System.out.println("Error" + ex.getMessage());
        }
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;
import Model.Account;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext{
    DBContext db=new DBContext();
    
    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from [Account]";
        try {
            
            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a=new Account();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setEmployeeId(rs.getInt(4));
                list.add(a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static void main(String[] args) {
        AccountDAO accd=new AccountDAO();
        List<Account> l=accd.getAllAccount();
        for(Account a:l){
            System.out.println(l);
        }
    }
}

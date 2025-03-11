/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;
import Model.Request;
import Model.RequestDTO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ADMIN
 */
public class RequestDAO extends DBContext{
    DBContext db=new DBContext();
    
    public List<Request> getAllRequest() {
        List<Request> list = new ArrayList<>();
        String sql = "select * from [Request]";
        try {
            
            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Request r=new Request();
                r.setId(rs.getInt(1));
                r.setEmployeeId(rs.getInt(2));
                r.setDateTo(rs.getDate(3));
                r.setDateFrom(rs.getDate(4));
                r.setDateCreate(rs.getDate(5));
                r.setReaason(rs.getString(6));
                r.setStatus(rs.getString(7));
                
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
     public List<RequestDTO> getRequestbyManagerID() {
        List<RequestDTO> list = new ArrayList<>();
        String sql = "select r.Id,r.DateCreate,r.DateFrom,r.DateTo,r.Reason,r.Status,e.Id,e.Name from Request r inner join Employee  e on r.EmployeeId = e.Id where e.Parentemployee =2";
        try {
            
            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RequestDTO r=new RequestDTO();
                r.setId(rs.getInt(1));
                r.setDateCreate(rs.getDate(2));
                r.setDateFrom(rs.getDate(3));
                r.setDateTo(rs.getDate(4));
                r.setReason(rs.getString(5));
                r.setStatus(rs.getString(6));
                r.seteId(rs.getInt(7));
                r.seteName(rs.getString(8));
                
                list.add(r);
            }
        } catch (SQLException ex) {
        }
        return list;
     }
     public List<RequestDTO> UpdateStatusRequest(String Status, int EmployeeId) {
        List<RequestDTO> list = new ArrayList<>();
        String sql = "update Request SET  Status = '?' where  EmployeeId = ?";
        try {    
            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            st.setString(1, Status);
            st.setInt(2, EmployeeId);
            while (rs.next()) {
                RequestDTO r=new RequestDTO();
                r.setId(rs.getInt(1));
                r.setDateCreate(rs.getDate(2));
                r.setDateFrom(rs.getDate(3));
                r.setDateTo(rs.getDate(4));
                r.setReason(rs.getString(5));
                r.setStatus(rs.getString(6));
                r.seteId(rs.getInt(7));
                r.seteName(rs.getString(8));
                
                list.add(r);
            }
        } catch (SQLException ex) {
        }
        return list;
     }
     public List<RequestDTO> getRequestbyEmployeeId() {
        List<RequestDTO> list = new ArrayList<>();
        String sql = "select r.Id,r.DateCreate,r.DateFrom,r.DateTo,r.Reason,r.Status from Request r where r.EmployeeId=3";
        try {    
            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();          
            while (rs.next()) {
                RequestDTO r=new RequestDTO();
                r.setId(rs.getInt(1));
                r.setDateCreate(rs.getDate(2));
                r.setDateFrom(rs.getDate(3));
                r.setDateTo(rs.getDate(4));
                r.setReason(rs.getString(5));
                r.setStatus(rs.getString(6));
                r.seteId(rs.getInt(7));
                r.seteName(rs.getString(8));
                
                list.add(r);
            }
        } catch (SQLException ex) {
        }
        return list;
     }
    public static void main(String[] args) {
        RequestDAO r=new RequestDAO();
        List<RequestDTO> l=r.getRequestbyEmployeeId();
        
        for (RequestDTO requestDTO : l) {
            System.out.println(requestDTO.getId()+ requestDTO.getReason());
        }
}
}
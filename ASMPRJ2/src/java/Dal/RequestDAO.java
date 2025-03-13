/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Request;
import Model.RequestDTO;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class RequestDAO extends DBContext {

    DBContext db = new DBContext();

    public List<Request> getAllRequest() {
        List<Request> list = new ArrayList<>();
        String sql = "select * from [Request]";
        try {

            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Request r = new Request();
                r.setId(rs.getInt(1));
                r.setEmployeeId(rs.getInt(2));
                r.setDateTo(rs.getDate(3));
                r.setDateFrom(rs.getDate(4));
                r.setDateCreate(rs.getDate(5));
                r.setReaason(rs.getString(6));
                r.setStatus(rs.getString(7));

                list.add(r);
            }
        } catch (SQLException ex) {
        }
        return list;
    }

    public int insert(Request request) {
        int result = -1;
        String sql = "INSERT INTO [dbo].[Request] ( [EmployeeId], [DateTo], [DateFrom], [DateCreate], [Reason], [Status]) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        // Sử dụng try-with-resources để tự động đóng PreparedStatement
        try (PreparedStatement st = db.connection.prepareStatement(sql)) {
            st.setInt(1, request.getEmployeeId());
            st.setDate(2, request.getDateTo());
            st.setDate(3, request.getDateFrom());
            st.setDate(4, request.getDateCreate());
            st.setString(5, request.getReaason()); // Nếu đổi tên thuộc tính, thì đây thành getReason()
            st.setString(6, request.getStatus());
            result = st.executeUpdate();
        } catch (SQLException ex) {
            // Log lỗi để tiện debug
            ex.printStackTrace();
        }
        return result;
    }

    public int Delete(int Id) {
        int result = -1;
        String sql = "DELETE FROM [dbo].[Request]\n"
                + "      WHERE ?";
        try {
            PreparedStatement st = db.connection.prepareStatement(sql);
            st.setInt(1, Id);
            result = st.executeUpdate();
        } catch (SQLException ex) {
        }
        return result;
    }

    public int Update(Request request) {
        int result = -1;
        String sql = "UPDATE [dbo].[Request]\n"
                + "      SET [EmployeeId] = ?\n"
                + "      ,[DateTo] = ?\n"
                + "      ,[DateFrom] = ?\n"
                + "      ,[DateCreate] = ?\n"
                + "      ,[Reason] = ?\n"
                + "      ,[Status] = ?\n"
                + " WHERE Id = ?";
        try {
            PreparedStatement st = db.connection.prepareStatement(sql);
            st.setInt(1, request.getEmployeeId());
            st.setDate(2, new java.sql.Date(request.getDateTo().getTime()));
            st.setDate(3, new java.sql.Date(request.getDateFrom().getTime()));
            st.setDate(4, new java.sql.Date(request.getDateCreate().getTime()));
            st.setString(5, request.getReaason());
            st.setString(6, request.getStatus());
            st.setInt(7, request.getId());
            result = st.executeUpdate();
        } catch (SQLException ex) {
        }
        return result;
    }

    public List<RequestDTO> getRequestbyManagerID() {
        List<RequestDTO> list = new ArrayList<>();
        String sql = "select r.Id,r.DateCreate,r.DateFrom,r.DateTo,r.Reason,r.Status,e.Id,e.Name from Request r inner join Employee  e on r.EmployeeId = e.Id where e.Parentemployee =2";
        try {

            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RequestDTO r = new RequestDTO();
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
                RequestDTO r = new RequestDTO();
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
                RequestDTO r = new RequestDTO();
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
        // Khởi tạo DAO
        RequestDAO dao = new RequestDAO();
        
        // Tạo một Request mới
        Request request = new Request();
        request.setId(999); // Id tự đặt (nếu DB không tự sinh)
        request.setEmployeeId(4); // Giả sử employeeId là 123
        // Giả sử ngày bắt đầu nghỉ và ngày kết thúc nghỉ
        request.setDateFrom(Date.valueOf("2025-03-14"));
        request.setDateTo(Date.valueOf("2025-03-16"));
        // Ngày tạo request (có thể lấy ngày hiện tại)
        request.setDateCreate(Date.valueOf(LocalDate.now()));
        request.setReaason("Nghỉ phép để về quê");
        request.setStatus("Pending"); // Tùy ý
//        
        // Gọi hàm insert
        int result = dao.insert(request);
        
        // Kiểm tra kết quả
        if (result > 0) {
            System.out.println("Insert thành công!");
        } else {
            System.out.println("Insert thất bại!");
        }
    }
}

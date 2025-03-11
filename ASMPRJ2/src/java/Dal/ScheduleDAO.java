/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;
import Model.RequestDTO;
import Model.ScheduleDTO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ADMIN
 */
public class ScheduleDAO extends DBContext{
    DBContext db=new DBContext();
     public List<ScheduleDTO> getSchedule() {
        List<ScheduleDTO> list = new ArrayList<>();
        String sql = "select  sche.Id,sche.Date,sche.Status,e.Name from Schedule sche inner join Employee e on e.Id = sche.EmployeeId";
        try {

            PreparedStatement st = db.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ScheduleDTO s = new ScheduleDTO();
                s.setId(rs.getInt(1));
                s.setDate(rs.getDate(2));
                s.setStatus(rs.getBoolean(3));
                s.seteName(rs.getString(4));
                list.add(s);
            }
        } catch (SQLException ex) {
        }
        return list;
    }
     public static void main(String[] args) {
        ScheduleDAO r=new ScheduleDAO();
        List<ScheduleDTO> l=r.getSchedule();
        
        for (ScheduleDTO scheduleDTO : l) {
            System.out.println(scheduleDTO.geteName());
        }
}

}


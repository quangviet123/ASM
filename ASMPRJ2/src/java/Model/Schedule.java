/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Schedule {
    private int Id;
    private int EmployeeId;
    private Date Date;
    private boolean Status;

    public Schedule() {
    }

    public Schedule(int Id, int EmployeeId, Date Date, boolean Status) {
        this.Id = Id;
        this.EmployeeId = EmployeeId;
        this.Date = Date;
        this.Status = Status;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(int EmployeeId) {
        this.EmployeeId = EmployeeId;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Schedule{" + "Id=" + Id + ", EmployeeId=" + EmployeeId + ", Date=" + Date + ", Status=" + Status + '}';
    }
    
    
}

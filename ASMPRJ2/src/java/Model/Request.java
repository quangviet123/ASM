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
public class Request {
    private int Id;
    private int EmployeeId;
    private Date DateTo;
    private Date DateFrom;
    private Date DateCreate;
    private String Reaason;
    private String Status;

    public Request() {
    }

    public Request(int Id, int EmployeeId, Date DateTo, Date DateFrom, Date DateCreate, String Reaason, String Status) {
        this.Id = Id;
        this.EmployeeId = EmployeeId;
        this.DateTo = DateTo;
        this.DateFrom = DateFrom;
        this.DateCreate = DateCreate;
        this.Reaason = Reaason;
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

    public Date getDateTo() {
        return DateTo;
    }

    public void setDateTo(Date DateTo) {
        this.DateTo = DateTo;
    }

    public Date getDateFrom() {
        return DateFrom;
    }

    public void setDateFrom(Date DateFrom) {
        this.DateFrom = DateFrom;
    }

    public Date getDateCreate() {
        return DateCreate;
    }

    public void setDateCreate(Date DateCreate) {
        this.DateCreate = DateCreate;
    }

    public String getReaason() {
        return Reaason;
    }

    public void setReaason(String Reaason) {
        this.Reaason = Reaason;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }
    
    
}

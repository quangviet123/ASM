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
public class Employee {
    private int Id;
    private String Name;
    private Date Dob;
    private String Email;
    private String Phone;
    private int Division;
    private int RoleId;

    public Employee() {
    }

    public Employee(int Id, String Name, Date Dob, String Email, String Phone, int Division, int RoleId) {
        this.Id = Id;
        this.Name = Name;
        this.Dob = Dob;
        this.Email = Email;
        this.Phone = Phone;
        this.Division = Division;
        this.RoleId = RoleId;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public Date getDob() {
        return Dob;
    }

    public void setDob(Date Dob) {
        this.Dob = Dob;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public int getDivision() {
        return Division;
    }

    public void setDivision(int Division) {
        this.Division = Division;
    }

    public int getRoleId() {
        return RoleId;
    }

    public void setRoleId(int RoleId) {
        this.RoleId = RoleId;
    }
    
    
}

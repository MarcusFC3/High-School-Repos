package schoolemployees;

import java.util.Date;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author mjones
 */
public class Employee extends Person {

    private String office;
    private double salary;
    private final Date dateHired = new Date();

    public Employee(String office, double salary, String name, String address, String email) {
        super(name, address, email);
        this.office = office;
        this.salary = salary;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Date getDateHired() {
        return dateHired;
    }

    @Override
    public String toString() {
        return String.format("Employee name: %s\nOffice: %s\nSalary: %.2f\nAddress: %s\nEmail address: %s\nDate hired: %s\n",
                this.getName(), office, salary, this.getAddress(), this.getEmail(), dateHired);
    }

}

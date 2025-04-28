package schoolemployees;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author mjones
 */
public class Faculty extends Employee {

    private int officeHours;
    private String rank;

    public Faculty(int officeHours, String rank, String office, double salary, String name, String address, String email) {
        super(office, salary, name, address, email);
        this.officeHours = officeHours;
        this.rank = rank;
    }

    public int getOfficeHours() {
        return officeHours;
    }

    public void setOfficeHours(int officeHours) {
        this.officeHours = officeHours;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        return String.format("Employee name: %s\nOffice hours: %d\nRank: %s\nOffice: %s\nSalary: %.2f\nAddress: %s\nEmail address: %s\nDate hired: %s\n",
                this.getName(), officeHours, rank, this.getOffice(), this.getSalary(), this.getAddress(), this.getEmail(), this.getDateHired());
    }

}

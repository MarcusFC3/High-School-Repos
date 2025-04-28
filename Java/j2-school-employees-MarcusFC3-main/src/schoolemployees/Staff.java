package schoolemployees;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author mjones
 */
public class Staff extends Employee {

    private String title;

    public Staff(String title, String office, double salary, String name, String address, String email) {
        super(office, salary, name, address, email);
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return String.format("Employee name: %s\nTitle: %s\nOffice: %s\nSalary: %.2f\nAddress: %s\nEmail address: %s\nDate hired: %s\n",
                this.getName(), title, this.getOffice(), this.getSalary(), this.getAddress(), this.getEmail(), this.getDateHired());
    }

}

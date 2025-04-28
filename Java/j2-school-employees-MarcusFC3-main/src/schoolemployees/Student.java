package schoolemployees;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author mjones
 */
public class Student extends Person {

    private String classStatus;//could be int

    public Student(String classStatus, String name, String address, String email) {
        super(name, address, email);
        this.classStatus = classStatus;
    }

    public String getClassStatus() {
        return classStatus;
    }

    public void setClassStatus(String classStatus) {
        this.classStatus = classStatus;
    }

    @Override
    public String toString() {
        return String.format("Student name: %s\nClass status: %s\nAddress: %s\nEmail address: %s\n",
                this.getName(), classStatus, this.getAddress(), this.getEmail());

    }

}

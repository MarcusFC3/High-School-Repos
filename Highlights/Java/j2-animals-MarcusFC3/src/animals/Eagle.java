/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Eagle extends Bird implements IFly, IMakeSound {

    public Eagle(String name, double wingspan) {
        super(wingspan, name);
    }
    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: SCREE!");
        
    }
    @Override
    public void fly() {
        System.out.println(this.getName() + " is flying: flap flap flap");
    }
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nWingspan "+ this.getWingspan()+"in\n";
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Bat extends Mammal implements IFly, IMakeSound {

    public Bat(String name,double bodyTemp) {
        super(bodyTemp, name);
    }

    @Override
    public void fly() {
        System.out.println(this.getName() + " is flying: flap flap flap");
    }

    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: Screeech");
    }
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nBody Temperature: "+ this.getBodyTemp()+" degrees F\n";
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Ostrich extends Bird implements IWalk, IMakeSound {

    public Ostrich(String name, double wingspan) {
        super(wingspan, name);
    }

    @Override
    public void walk() {
        System.out.println(this.getName() + " is walking: clunk clunk clunk");
    }

    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: Tweeet");
    }
    
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nWingspan "+ this.getWingspan()+"in\n";
    }
    
}

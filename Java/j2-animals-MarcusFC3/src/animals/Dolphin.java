/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Dolphin extends Mammal implements ISwim, IMakeSound {
    public Dolphin(String name, double bodyTemp){
        super(bodyTemp,name);
    }

    @Override
    public void swim() {
        System.out.println(this.getName() + " is swimming: swoosh sloosh swoosh");
    }

    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: click squeak phew");
    }

    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nBody Temperature: "+ this.getBodyTemp()+" degrees F\n";
    }
    
}

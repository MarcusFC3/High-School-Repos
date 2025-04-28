/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Lion extends Mammal implements IWalk, IMakeSound {

    public Lion(String name,double bodyTemp) {
        super(bodyTemp, name);
    }

    @Override
    public void walk() {
        System.out.println(this.getName() + " is walking: tap tap tap");
    }

    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: ROARRR!");
    }
    
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nBody Temperature: "+ this.getBodyTemp()+" degrees F\n";
    }
    
}

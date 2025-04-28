/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class Penguin extends Bird implements IWalk, IMakeSound, ISwim {

    public Penguin(String name, double wingspan){
        super(wingspan,name);
    }

    @Override
    public void walk() {
        System.out.println(this.getName() + " is walking: clop clop clop");
    }

    @Override
    public void makeSound() {
        System.out.println(this.getName() + " says: chirp chirp chirp");
    }

    @Override
    public void swim() {
        System.out.println(this.getName() + " is swimming: splash splash splash");
    }
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nWingspan "+ this.getWingspan()+"in\n";
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
public class FlyingFish extends Fish implements IFly, ISwim {

    public FlyingFish(String name,boolean isSaltWater) {
        super(isSaltWater, name);
    }

    @Override
    public void fly() {
        System.out.println(this.getName() + " is flying: Whirrrr");
    }

    @Override
    public void swim() {
        System.out.println(this.getName() + " is swimming: swoosh swoosh swoosh");
    }
    
    @Override
    public String toString() {
        return "Name: " + this.getName() 
                + "\nIs it a saltwater fish? "+ this.isIsSaltWater()+"\n";
    }
}

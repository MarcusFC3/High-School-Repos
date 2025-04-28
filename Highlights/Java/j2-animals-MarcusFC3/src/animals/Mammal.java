/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animals;

/**
 *
 * @author mjones
 */
abstract public class Mammal extends Animal{
    private double bodyTemp;

    public Mammal(double bodyTemp, String name) {
        super(name);
        this.bodyTemp = bodyTemp;
    }

    public double getBodyTemp() {
        return bodyTemp;
    }

    public void setBodyTemp(double bodyTemp) {
        this.bodyTemp = bodyTemp;
    }
    
}

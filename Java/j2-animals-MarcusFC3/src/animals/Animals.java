package animals;

import java.util.ArrayList;

/**
 * Author: Marcus Jones Jr. Chapter:13 Lab:1
 */
public class Animals {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Ostrich ostrich = new Ostrich("Harry", 79.2);
        Penguin penguin = new Penguin("Gerald", 30);
        Eagle eagle = new Eagle("Penny", 70.8);

        Dolphin dolphin = new Dolphin("Willy", 96.8);
        Lion lion = new Lion("Mufasa", 100.5);
        Bat bat = new Bat("Tim", 68);

        Shark shark = new Shark("Wally", true);
        Bass bass = new Bass("Bryce", false);
        FlyingFish flyingFish = new FlyingFish("squash", true);

        ArrayList birdList = new ArrayList();
        birdList.add(ostrich);
        birdList.add(penguin);
        birdList.add(eagle);

        ArrayList mammalList = new ArrayList();
        mammalList.add(dolphin);
        mammalList.add(lion);
        mammalList.add(bat);

        ArrayList fishList = new ArrayList();
        fishList.add(shark);
        fishList.add(bass);
        fishList.add(flyingFish);

        ArrayList fly = new ArrayList();
        fly.add(bat);
        fly.add(eagle);
        fly.add(flyingFish);

        ArrayList makeSound = new ArrayList();
        makeSound.add(bat);
        makeSound.add(dolphin);
        makeSound.add(eagle);
        makeSound.add(lion);
        makeSound.add(ostrich);
        makeSound.add(penguin);

        ArrayList walk = new ArrayList();
        walk.add(eagle);
        walk.add(lion);
        walk.add(ostrich);
        walk.add(penguin);

        ArrayList swim = new ArrayList();
        swim.add(bass);
        swim.add(dolphin);
        swim.add(flyingFish);
        swim.add(shark);
        swim.add(penguin);

        ArrayList<ArrayList> allLists = new ArrayList();
        allLists.add(birdList);
        allLists.add(mammalList);
        allLists.add(fishList);
        allLists.add(walk);
        allLists.add(fly);
        allLists.add(swim);
        allLists.add(makeSound);

        for (int num = 0; num < allLists.size(); num++) {
            switch (num) {//Switch statement displays current list being read
                case 0 ->
                    System.out.println("Reading a list of animals that are birds");
                case 1 ->
                    System.out.println("Reading a list of animals that are mammals");
                case 2 ->
                    System.out.println("Reading a list of animals that are fish");
                case 3 ->
                    System.out.println("Reading a list of animals that can walk");
                case 4 ->
                    System.out.println("Reading a list of animals that can fly");
                case 5 ->
                    System.out.println("Reading a list of animals that can swim");
                case 6 ->
                    System.out.println("Reading a list of animals that can make sound");
            }
            System.out.print("\n");
            for (Object animal : allLists.get(num)) {
                System.out.println(animal); //Prints animal toString with its specific information
                System.out.println(((Animal) animal).getName() + " is a " + String.valueOf(animal.getClass()).substring(14).toLowerCase());//Prints animal species

                //Finds the class of animal and prints it
                if (animal instanceof Fish) {
                    System.out.println(((Animal) animal).getName() + " is a fish");
                } else if (animal instanceof Bird) {
                    System.out.println(((Animal) animal).getName() + " is a bird");
                } else if (animal instanceof Mammal) {
                    System.out.println(((Animal) animal).getName() + " is a mammal");
                }

                //Checks if animal has each interface and calls the appropriate method
                System.out.printf("Can %s the %s make sound?\n", ((Animal) animal).getName(), String.valueOf(((Animal) animal).getClass()).substring(14));
                if (((Animal) animal) instanceof IMakeSound iMakeSound) {
                    System.out.println(((Animal) animal).getName() + " Can Make Sound!");
                    iMakeSound.makeSound();
                } else {
                    System.out.println(((Animal) animal).getName() + " Can't Make Sound...");
                }
                System.out.printf("Can %s the %s walk?\n", ((Animal) animal).getName(), String.valueOf(((Animal) animal).getClass()).substring(14));
                if (((Animal) animal) instanceof IWalk iWalk) {
                    System.out.println(((Animal) animal).getName() + " Can Walk!");
                    iWalk.walk();
                } else {
                    System.out.println(((Animal) animal).getName() + " Can't Walk...");
                }
                System.out.printf("Can %s the %s swim?\n", ((Animal) animal).getName(), String.valueOf(((Animal) animal).getClass()).substring(14));
                if (((Animal) animal) instanceof ISwim iSwim) {
                    System.out.println(((Animal) animal).getName() + " Can Swim!");
                    iSwim.swim();
                } else {
                    System.out.println(((Animal) animal).getName() + " Can't Swim...");
                }
                System.out.printf("Can %s the %s fly?\n", ((Animal) animal).getName(), String.valueOf(((Animal) animal).getClass()).substring(14));
                if (((Animal) animal) instanceof IFly iFly) {
                    System.out.println(((Animal) animal).getName() + " Can Fly!");
                    iFly.fly();
                } else {
                    System.out.println(((Animal) animal).getName() + " Can't Fly...");
                }
                System.out.println("\n");
            }
        }
    }
}

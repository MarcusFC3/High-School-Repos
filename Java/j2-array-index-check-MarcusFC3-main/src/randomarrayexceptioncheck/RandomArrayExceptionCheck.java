package randomarrayexceptioncheck;

import java.util.InputMismatchException;
import java.util.Random;
import java.util.Scanner;

/**
 * Author: Marcus Jones Jr. Chapter: 12 Lab: 1
 */
public class RandomArrayExceptionCheck {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        final int ARRAY_SIZE = 100;
        Random random = new Random();
        Scanner sc = new Scanner(System.in);
        int[] randomNums = new int[ARRAY_SIZE];
        for (int num = 0; num < ARRAY_SIZE; num++) {
            randomNums[num] = random.nextInt(50) + 1;
        }

        System.out.print("Enter in the index of the element you wish to view: ");
        try {
            int index = sc.nextInt();
            System.out.printf("The value of the element with the index of %d is %d\n", index, randomNums[index]);
        
        } catch (InputMismatchException ex1) {
            System.out.println("Input Doesn't Match Datatype(Integer)");
        
        } catch (IndexOutOfBoundsException ex2) {
            System.out.println("Index Out of Bounds");
        }
    }

}

package j1.ch8.lab1;

import java.util.Scanner;

/**
 *
 * @author Marcus Jones Jr. 8/20/2024 Ch8 Lab1
 */
public class J1Ch8Lab1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        final int TOTAL_ROWS = 3;//This int determines the number of columns(dealers) in the two dimensional array "cars".
        final int TOTAL_COLUMNS = 4; //This int determines the number of rows(car brands) in the two dimensional array "cars".
        //These strings determine the car brands to be displayed.
        final String CAR_BRAND1 = "Ford";
        final String CAR_BRAND2 = "Chevy";
        final String CAR_BRAND3 = "Dodge";
        
        String carBrand; //The string car brand is displayed during user input.

        int[][] cars = new int[TOTAL_ROWS][TOTAL_COLUMNS];
        Scanner sc = new Scanner(System.in);
        System.out.println("*** Dealership Inventory Program ***");

        for (int row = 0; row < cars.length; row++) {
            carBrand = switch (row) {
                case 0 ->
                    CAR_BRAND1;
                case 1 ->
                    CAR_BRAND2;
                case 2 ->
                    CAR_BRAND3;
                default ->
                    "undefined";
            };
            for (int column = 0; column < cars[0].length; column++) {
                if (column == 0) {
                    System.out.println("\n" + carBrand + " inventory");
                }
                System.out.print(carBrand + " at dealer " + (column + 1) + ": ");
                cars[row][column] = sc.nextInt();
            }
        }
        PrintCarArray(cars, CAR_BRAND1, CAR_BRAND2, CAR_BRAND3);
    }

    /**
     * @param array
     * @param CAR_BRAND1
     * @param CAR_BRAND2
     * @param CAR_BRAND3 
     * This method prints the array using the car brand names to place them in front of each row.
     */
    public static void PrintCarArray(int[][] array, final String CAR_BRAND1, final String CAR_BRAND2, final String CAR_BRAND3) {
        int row;
        String carBrand;
        
        System.out.print("\t");
        //This for loop prints each dealer at the top of the table
        for (int column
                = 0; column < array[0].length; column++) {
            System.out.print(" Dealer " + (column + 1) + "\t");
        }
        System.out.print("\n");
        
        for (row = 0; row < array.length; row++) {
            carBrand = switch (row) {
                case 0 ->
                    CAR_BRAND1;
                case 1 ->
                    CAR_BRAND2;
                case 2 ->
                    CAR_BRAND3;
                default ->
                    "undefined";
            };
            System.out.print(carBrand + "\t\t");
            for (int column = 0; column < array[0].length; column++) {
                System.out.print(array[row][column] + "\t\t");
                if (column == array[0].length - 1) {
                    System.out.print("\n");
                }
            }
        }

    }

}

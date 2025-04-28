package j1.ch7.lab2;

import java.util.Scanner;

/**
 *
 * @author Marcus Jones Jr. 8/19/2024 Ch7 Lab2
 */
public class J1Ch7Lab2 {

    public static void main(String[] args) {
        int numberOfPrices, belowAveragePrices;
        double[] prices;
        double currentPrice, averagePrice = 0, totalPrice = 0; //initalized the averagePrice variable to fix syntax errors on line 29.
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number of prices you wish to enter: ");
        numberOfPrices = input.nextInt();
        prices = new double[numberOfPrices];

        for (int i = 0; i < numberOfPrices; ++i) {
            System.out.printf("Enter price %d: ", (i + 1));
            currentPrice = input.nextDouble();
            prices[i] = currentPrice; //changed index number from hardcoded value to i
            totalPrice += currentPrice;
            averagePrice = totalPrice / numberOfPrices;
        }

        belowAveragePrices = belowAverage(numberOfPrices, prices, averagePrice); //The positions of numberOfPrices and prices were incorectly swapped.

        System.out.printf("\nYou entered a total of %d prices.\n", numberOfPrices);
        System.out.printf("The total of all prices entered was $%.2f and the average price was $%.2f.\n", totalPrice, averagePrice);
        System.out.printf("Of the prices entered %d were below the average price of $%.2f.\n", belowAveragePrices, averagePrice);

        input.close();
    }

    public static int belowAverage(int num, double[] array, double average) {
        int belowAverageCount = 0;

        for (int i = 0; i < num; ++i) {
            if (array[i] < average) {
                ++belowAverageCount;
            }
        }
        return belowAverageCount;
    }

}

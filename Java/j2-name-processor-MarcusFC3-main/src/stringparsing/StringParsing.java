package stringparsing;

import java.util.Scanner;

/**
 * Author:
 * Chapter:
 * Lab: 
 */
public class StringParsing {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
        System.out.print("Please enter your full name: ");
        String fullName = scanner.nextLine();

        if (fullName.contains(",")) {
            System.out.println("Your name is " + fullName);
        } else {
            String[] fullNameSeparated = fullName.split(" ");
            System.out.println("Your name is " + fullNameSeparated[1] + ", " + fullNameSeparated[0]);
        }
    }
    
}

package j1.ch7.lab1;

import java.util.Scanner;

/**
 * @author Marcus Jones Jr. 8/19/2024 Ch 7 Lab 1
 */
public class J1Ch7Lab1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String[] friendNames = new String[12];
        int totalNumOfFriends = 0;
        Scanner sc = new Scanner(System.in);

        System.out.println("* * * Friend Tracker * * *");
        System.out.print("Enter the name of friend 1 or zzzz to exit: ");

        String input = sc.nextLine();
        /**
         * This while loop places the user's string input's into an array and
         * ends the prompt if the user exceeds 12 names or types "zzzz"
         */
        while (input.toLowerCase().compareTo("zzzz") != 0 && totalNumOfFriends != 11) {
            friendNames[totalNumOfFriends] = input;
            totalNumOfFriends++;
            System.out.print("Enter the name of friend " + (totalNumOfFriends + 1) + " or zzzz to exit: ");
            input = sc.nextLine();
        }

        System.out.println("Your friends are...");
        //this for loop reads the contents of the friend Names array
        for (int friendNum = 0; totalNumOfFriends > friendNum; friendNum++) {
            System.out.println(friendNames[friendNum]);
        }

        System.out.print("Enter the name of the friend you would like to find: ");
        input = sc.nextLine();
        /**
         * This for loop searches the array for the entered name regardless of
         * capitalization. If no matching name is found, an alternate message is
         * displayed.
         */
        boolean friendFound = false;
        for (int friendNum = 0; totalNumOfFriends > friendNum; friendNum++) {
            if (input.toLowerCase().compareTo(friendNames[friendNum].toLowerCase()) == 0) {
                System.out.println("Your friend " + friendNames[friendNum] + " was found.");
                friendFound = true;
            }
            if (friendNum == totalNumOfFriends - 1 && !friendFound) {
                System.out.println("Your friend was not found!");
            }
        }
    }
}

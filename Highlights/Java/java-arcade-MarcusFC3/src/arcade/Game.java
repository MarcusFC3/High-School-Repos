/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arcade;

import java.util.Random;

/**
 *
 * Marcus Jones Jr., Ch9, lab2, December 7, 2023
 */
public class Game {
/**
 * This variable above the methods is a field.
 */
    private final int CREDITS_REQUIRED;
/**
 * This is the constructor method for the Game class. It requires the cost
 * of the game in credits as a parameter.
 * @param CREDITS_REQUIRED 
 */
    public Game(int CREDITS_REQUIRED) {
        this.CREDITS_REQUIRED = CREDITS_REQUIRED;
        System.out.println("Game created. " + CREDITS_REQUIRED + " credits required to play.");
    }
/**
 * This method is a getter for the CREDITS_REQUIRED constant variable.
 * It returns the number of credits required to play the game. 
 * This variable does not have a setter because it is a constant and cannot be 
 * changed once the object is created.
 * @return 
 */
    public int getCreditsRequired() {
        return CREDITS_REQUIRED;
    }
/**
 * This method requires a card as a parameter and will spend credits on the card
 * to play a game. playing a game will place a random number 1-5 of tickets 
 * on the card. The number of tickets won and the card's toString method
 * are printed to show the user the changes made to their card after
 * playing the game. If the card does not meet the credit requirement to play
 * the game an error message is printed along with the card's toString method.
 * @param cardToCharge 
 */
    public void playGame(Card cardToCharge) {
        System.out.println("This game requires " + CREDITS_REQUIRED + " credits to play. Processing...");
        int creditBalance = cardToCharge.getCreditBalance();
        if (creditBalance < CREDITS_REQUIRED) {
            System.out.println("Sorry. You do not have enough credits to play this game.");
            System.out.println(cardToCharge.toString());
        } else {
            System.out.println("Deducting " + CREDITS_REQUIRED + " credits from card #" + cardToCharge.getCardIdNumber());
            cardToCharge.setCreditBalance(cardToCharge.getCreditBalance() - CREDITS_REQUIRED);
            System.out.println("Playing the game.");
            Random random;
            random = new Random();
            int ticketsWon = random.nextInt(4) + 1;
            cardToCharge.setTicketBalance(ticketsWon + cardToCharge.getTicketBalance());
            System.out.println("You have won " + ticketsWon + " tickets! \n" + cardToCharge.toString());

        }
    }
/**
 * This toString overrides the default toString method made by java and is the 
 * default toString method created by netbeans's code insertion. It displays all of the fields in the Game class.
 * @return 
 */
    @Override
    public String toString() {
        return "Game{" + "CREDITS_REQUIRED=" + CREDITS_REQUIRED + '}';
    }

}

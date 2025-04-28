/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arcade;

/**
 *
 * Marcus Jones Jr., Ch9, lab2, December 7, 2023
 */
public class Card {
/**
 * These private variables that are declared before the methods are my fields
 */
    private static int nextCardNumber = 1;
    private final int CARD_NUMBER = nextCardNumber;
    private int creditBalance;
    private int ticketBalance;
/**
 * This is the constructor method for the card class. It is an empty constructor meaning that
 * it does not require any parameters. Every time a card is constructed, the next card number
 * static variable is increased by one. This allows for the card number to increase every time a new card is created.
 */
    public Card() {
        nextCardNumber = nextCardNumber + 1;
        System.out.println("Card #" + CARD_NUMBER + " created.");
    }

    /**
     * below are my getters and setters. Getters and setters are methods that allow for data 
     * in the card to be retrieved and modified.
     * @return 
     */
    public int getCardIdNumber() {
        return CARD_NUMBER;
    }

    public int getCreditBalance() {
        return creditBalance;
    }

    public void setCreditBalance(int creditBalance) {
        this.creditBalance = creditBalance;
    }

    public int getTicketBalance() {
        return ticketBalance;
    }

    public void setTicketBalance(int ticketBalance) {
        this.ticketBalance = ticketBalance;
    }

    /**
     * This toString method displays the card number, credit balance, and ticket balance.
     * @return 
     */
    @Override
    public String toString() {

        return "Card #" + CARD_NUMBER + " has " + creditBalance + " credits and " + ticketBalance + " tickets remaining.";
    }

}

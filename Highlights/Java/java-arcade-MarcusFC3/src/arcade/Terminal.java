/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arcade;

/**
 *
 * Marcus Jones Jr., Ch9, lab2, December 7, 2023
 */
public class Terminal {
/**
 * The three constant variables above the methods are my fields.
 */
    private final int LARGE_PRIZE_COST;
    private final int MEDIUM_PRIZE_COST;
    private final int SMALL_PRIZE_COST;
/**
 * This is the constructor method for the terminal. The terminal requires the cost of each prize as its parameters. 
 * @param LARGE_PRIZE_COST
 * @param MEDIUM_PRIZE_COST
 * @param SMALL_PRIZE_COST 
 */
    public Terminal(int LARGE_PRIZE_COST, int MEDIUM_PRIZE_COST, int SMALL_PRIZE_COST) {
        this.LARGE_PRIZE_COST = LARGE_PRIZE_COST;
        this.MEDIUM_PRIZE_COST = MEDIUM_PRIZE_COST;
        this.SMALL_PRIZE_COST = SMALL_PRIZE_COST;
        System.out.println("Terminal created.");
    }
/**
 * This method prints the results of the Card class's toString method to display 
 * the balance of credits and tickets on a given card.
 * @param card 
 */
    public void checkBalance(Card card) {
        System.out.println(card.toString());
    }
/**
 * This method allows for the purchase of credits on a card, using a card and 
 * dollar amount as parameters. Every dollar is worth two credits. Once
 * credits are purchased a line is printed that confirms the purchase of the 
 * credits and the card class's toString method is then printed to show
 * how many credits are on the card after the purchase.
 * @param card
 * @param dollars 
 */
    public void purchaseCredits(Card card, int dollars) {
        int creditsPurchased = dollars * 2;

        card.setCreditBalance(creditsPurchased + card.getCreditBalance());
        System.out.println("Purchased " + creditsPurchased + " credits for " + dollars + " dollars on card#" + card.getCardIdNumber());
        System.out.println(card.toString());
    }
/**
 * This method transfers all of the credits from one card to another and
 * requires two different cards as its parameters. Once the credits have been 
 * transferred from one card to the other a line is printed that confirms the 
 * transfer of credits from card x to card y and the card class's toString method
 * is printed to display the credit and ticket balance of both cards.
 * @param sourceCard
 * @param destinationCard 
 */
    public void transferCreditBalance(Card sourceCard, Card destinationCard) {
        destinationCard.setCreditBalance(destinationCard.getCreditBalance() + sourceCard.getCreditBalance());
        sourceCard.setCreditBalance(0);
        System.out.println("Credit balance of " + sourceCard.getCreditBalance() + " transfered from card #" + sourceCard.getCardIdNumber() + " to card #" + destinationCard.getCardIdNumber());
        System.out.println(sourceCard.toString() + "\n" + destinationCard.toString());
    }
/**
 * This method transfers all of the tickets from one card to another and
 * requires two different cards as its parameters. Once the tickets have been 
 * transferred from one card to the other a line is printed that confirms the 
 * transfer of tickets from card x to card y and the card class's toString method
 * is printed to display the credit and ticket balance of both cards.
 * @param sourceCard
 * @param destinationCard 
 */
    public void transferTicketBalance(Card sourceCard, Card destinationCard) {
        System.out.println("Ticket balance of " + sourceCard.getTicketBalance() + " transfered from card #" + sourceCard.getCardIdNumber() + " to card #" + destinationCard.getCardIdNumber());
        destinationCard.setTicketBalance(destinationCard.getTicketBalance() + sourceCard.getTicketBalance());
        sourceCard.setTicketBalance(0);
        System.out.println(sourceCard.toString() + "\n" + destinationCard.toString());
    }
/**
 * This method will use all the tickets on the card typed in the parameter
 * to purchase as many prizes as possible, prioritizing the largest prize first
 * and the smallest prize last. Once no more prizes can be purchased 
 * a line is printed out that will tell the user how many of each prize size
 * was purchased and the card class's toString method is printed to
 * show the user how many tickets remain on the card after the prize purchases.
 * @param card 
 */
    public void purchasePrizes(Card card) {
        int largePrizes = 0;
        int mediumPrizes = 0;
        int smallPrizes = 0;
        while (card.getTicketBalance() >= LARGE_PRIZE_COST) {
            largePrizes++;
            card.setTicketBalance(card.getTicketBalance() - LARGE_PRIZE_COST);
        }
        while (card.getTicketBalance() >= MEDIUM_PRIZE_COST) {
            mediumPrizes++;
            card.setTicketBalance(card.getTicketBalance() - MEDIUM_PRIZE_COST);
        }
        while (card.getTicketBalance() >= SMALL_PRIZE_COST) {
            smallPrizes++;
            card.setTicketBalance(card.getTicketBalance() - SMALL_PRIZE_COST);
        }
        System.out.println("You have purchased: \n" + largePrizes + " large prize(s)\n" + mediumPrizes + " medium prize(s)\n" + smallPrizes + " small prize(s)");
        System.out.println(card.toString());

    }
/**
 * This toString overrides the default toString method made by java and is the 
 * default toString method created by netbeans's code insertion. It displays all of the fields in the terminal class.
 * @return 
 */
    @Override
    public String toString() {
        return "Terminal{" + "LARGE_PRIZE_COST=" + LARGE_PRIZE_COST + ", MEDIUM_PRIZE_COST=" + MEDIUM_PRIZE_COST + ", SMALL_PRIZE_COST=" + SMALL_PRIZE_COST + '}';
    }

}

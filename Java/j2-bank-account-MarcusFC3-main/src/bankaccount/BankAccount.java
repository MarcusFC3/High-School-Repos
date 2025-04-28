package bankaccount;

/**
 * Author:Marcus Jones Jr.
 * Chapter:9
 * Lab:1
 * Date:8/30/2024
 */
public class BankAccount {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Account johnDoe = new Account(1122, 20000);
        johnDoe.setAnnualInterestRate(4.5);
        johnDoe.withdraw(2500);
        johnDoe.deposit(3000);
        System.out.println("*** Account data ***");
        System.out.printf("Account id\t:\t%d\n",johnDoe.getId());
        System.out.printf("Account balance\t: $ %.2f\n", johnDoe.getBalance());
        System.out.printf("Monthly interest: $    %.2f\n", johnDoe.getMonthlyInterest());
        System.out.println("Account created\t: " + johnDoe.getDateCreated());
    }
    
}

# Bank Account
 
## Instructions:

### Design a class named Account that contains:
- A private int data field named id for the account (default 0).
- A private double data field named balance for the account (default 0).
- A private double data field named annualInterestRate that stores the current
interest rate (default 0). Assume that all accounts have the same interest rate.
- A private Date data field named dateCreated that stores the date when the
account was created.
- A no-arg constructor that creates a default account.
- A constructor that creates an account with the specified id and initial balance.
- The accessor and mutator methods for id, balance, and annualInterestRate.
- The accessor method for dateCreated.
- A method named getMonthlyInterestRate() that returns the monthly
interest rate.
- A method named getMonthlyInterest() that returns the monthly interest.
- A method named withdraw that withdraws a specified amount from the
account.
- A method named deposit that deposits a specified amount to the account.
- The method getMonthlyInterest() is to return monthly interest, not the interest rate.
  - Monthly interest is balance * monthlyInterestRate. 
  - monthlyInterestRate is annualInterestRate / 12.
  - Note annualInterestRate is a percentage, for example 4.5%. You need to divide it by 100.

### Write a test program that creates an Account object with:
- an account ID of 1122,
- a balance of $20,000
- an annual interest rate of 4.5%. 
- Use the withdraw method to withdraw $2,500
- Use the deposit method to deposit $3,000, and print the balance, the monthly interest, and the date when this account was created.

### Insert a comment at the top of the code containing your name, the chapter number, lab number and the date the program was created.

### Example Output:
![image](https://user-images.githubusercontent.com/17011204/204329459-1e55350f-1140-4df5-8442-ef7575a1db7b.png)


### Grading:
2 – General, compiles, comments, proper indentation, etc  
2 – Non static instance variables   
4 – Constructors  
4 – Accessors and mutators  
4 – Interest methods  
4 – Deposit and withdraw methods  
2 – Account creation  
2 – Interest rate modification  
2 – Using deposit and withdraw methods  
2 – Output

%We borrowed $1000 at a 10% annual interest rate. 
% If we did not make a payment for two years, and assuming there is no penalty for non-payment, how much do we owe now? 
% Assign the result to a variable called debt.

borrow=1000;
first_interest=0.1*borrow;
first_payment=first_interest+borrow;
second_interest=0.1*first_payment;
second_payment=second_interest+first_payment;
debt=second_payment

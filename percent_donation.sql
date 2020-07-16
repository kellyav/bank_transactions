/* Scenario:
The wealthiest customers of the bank decided to donate the 0.01% of their current_balance 
to a non-profit organization. 
The director of the bank says that if there aren't at least 10 wealthy customers 
(customers with over $5,000,000 as their current_amount), 
to cancel the operation because she wants to interview more customers. */


SET XACT_ABORT ON;

BEGIN TRAN; 
	UPDATE accounts set current_balance = current_balance - current_balance * 0.01 / 100
    WHERE current_balance > 5000000;
	IF @@ROWCOUNT <= 10	
    -- Throw the error, due to directors instructions
		THROW 55000, 'Not enough wealthy customers!', 1;
	ELSE		
		COMMIT TRAN; 


/* An XACT_ABORT and THROW is used in this script, so that if the number 
of affected rows is less than or equal to 10, an error is thrown and the transaction is rolled back.
The error is thrown and not raised, because 
raiserror would have continued the execution and the transaction would remain open! */

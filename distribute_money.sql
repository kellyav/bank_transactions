/* Sceanario: 

The bank where you work has decided to give $100 to those accounts with less than $5,000. 

However, the bank director only wants to give that money 
if there aren't more than 200 accounts with less than $5,000. */

BEGIN TRAN; 
	UPDATE accounts set current_balance = current_balance + 100
		WHERE current_balance < 5000;
-- Check number of affected rows, if above 500, reject transaction.
	  IF @@ROWCOUNT > 500 
		  BEGIN 
			  ROLLBACK TRAN; 
			  SELECT 'More accounts than expected. Rolling back'; 
		  END
	  ELSE
		  BEGIN 
			  COMMIT TRAN; 
			  SELECT 'Updates commited'; 
		  END

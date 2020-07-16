--The owner of account 10 has won a raffle and will be awarded $200. 

BEGIN TRY
  BEGIN TRAN;
		UPDATE accounts SET current_balance = current_balance + 200
			WHERE account_id = 10;
-- Check if there is a transaction
		IF @@TRANCOUNT > 0     
			COMMIT TRAN;     
  SELECT * 
  FROM accounts
  WHERE account_id = 10;      
END TRY

BEGIN CATCH  
    SELECT 'Rolling back the transaction'; 
    -- Check if there is a transaction
    IF @@TRANCOUNT > 0   	
        ROLLBACK TRAN;
END CATCH

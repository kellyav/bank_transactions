-- insert the data of two new customers into the customer table. 

SET XACT_ABORT ON;

BEGIN TRY
	BEGIN TRAN;
		INSERT INTO customers VALUES ('Mark', 'Davis', 'markdavis@mail.com', '555909090');
		INSERT INTO customers VALUES ('Dylan', 'Smith', 'dylansmith@mail.com', '555888999');
	COMMIT TRAN;
END TRY

BEGIN CATCH
	-- Check if there is an open transaction
	IF XACT_STATE() <> 0
		ROLLBACK TRAN;
    SELECT ERROR_MESSAGE() AS Error_message;
END CATCH

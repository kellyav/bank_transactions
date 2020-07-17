/* Sceario:

Count how many accounts have more than $50,000. This is an important result, so we want to avoid 
reading data modified by other transactions that haven't been 
committed or rolled back yet. (AKA prevents dirty reads) */


SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT COUNT(*) AS number_of_accounts
FROM accounts
WHERE current_balance >= 50000;

# bank_transactions
Maintenance of business tables in SQL Server, using the Bank database. 


## Scripts

- **100_transfer.sql**

Transfer $100 from account 1 to account 5

- **distribute_money.sql**

Give $100 to accounts less than $5,000, if there aren't more than 200 accounts matching that constraint. 

- **raffle_win.sql**

The owner of account 10 has won a raffle and will be awarded $200.

- **percent_donation.sql**

Customers with over $5,000,000 decide to donate 0.01% of their current_balance.

- **add_customer_info.sql**

Insert the data of two new customers into the customer table, with exception handling.

## Database 

bike_bank_db

### Tables 

Ones we used in this repo:

- customers

- accounts

- transactions

- errors

Others:

- buyers

- products

- staff

- orders

(See my [*bike_error_handle*](https://github.com/kellyav/bike_error_handle) repo for scripts using these last 4 tables)

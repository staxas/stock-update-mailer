# stock-update-mailer
Get updates on stock movements and changes in owned stock in your email

Sends you html emails with totals of owned stock worth, average of rates of stock owned,
comparisons with their current rate, and grand totals for all stocks being tracked.

Requires sendmail to be installed

You will need to manually adapt the scraper (getrates) to store historic rates, change $fileroot variable in both scripts to match your working directory, and input your email address (it will be used in both the from and to fields)

Also examine and remove demo data from data/rates/ data/user_data/owner and data/naming/names

# stock-update-mailer
Get updates on stock movements and changes in owned stock in your email

Sends you html emails with totals of owned stock worth, average of rates of stock owned,
comparisons with their current rate, and grand totals for all stocks being tracked.

Note: the programs are aimed at getting stock quotes only once per day. When scraping stock
data multiple times a day, only the first rate of that day will be used to calculate email data.

You will need to manually adapt the scraper (getrates) to store historic rates.

Also examine and remove demo data from data/rates/ data/user_data/owner and data/naming/names.

Requires ssmtp to be installed

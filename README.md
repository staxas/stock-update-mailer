# stock-update-mailer
Get updates on stock movements and changes in owned stock in your email

Sends you html emails with totals of owned stock worth, average of rates of stock owned,
comparisons with their current rate, and grand totals for all stocks being tracked.

Note: the programs are aimed at getting stock quotes only once per day. When scraping stock
data multiple times a day, only the first rate of that day will be used to calculate email data
(with the exception of the 'last rates' column, which always uses the rate last added to the rates data files).
This works best when running getrates only once on a given day before buying stock (with only
one moment of purchase on that day), and then having it run scheduled at the end of the day before
sending the actual email with mailrates so it contains the latest rates.

You will need to manually adapt the scraper (getrates) to store historic rates.

Also examine and remove demo data from data/rates/ data/user_data/owner and data/naming/names.

Has not been tested on other locales than of developer's, see comments for clues on what might need to be changed.

Requires ssmtp to be installed and configured correctly

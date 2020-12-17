# stock-update-mailer
Get updates on stock movements and changes in owned stock in your email

Sends you html emails with totals of owned stock worth, average of buy rates of stock owned,
comparisons with their current rate, and grand totals for all stocks being tracked. Can also
send emails with images of graphs of stock movements.

Note: the scripts are aimed at calculating value of mailable stock information by collecting the buy rates
only once per day (original goal of this project is to monitor long-term indice-based investments).
When scraping stock data multiple times a day, only the first rate of that day will be used to calculate
email data (with the exception of the 'last rates' numbers, which are always sourced from the rate last added
to the rates data files). These scripts only work when running getrates only once on a given day before buying stock
(with only one moment of purchase on that day), and then having it run scheduled at the end of the day before
sending the actual email with mailrates so it contains the latest rates.

Examine and remove example data from 'data/rates/' 'data/user_data/owner' 'logs/mailupdate.log' and 'data/naming/names'.

You will need to manually adapt the scraper 'getrates' to store historic rates.

You will need to create entries of the names and presentation order of your stocks in 'data/naming/names'.
When ordering stocks in 'data/naming/names', always use increments of 1 starting at 0 and never use the same number twice.

Sending of graph emails (mailupdate -g y) requires a log file with data of previous runs. You will always want logging to be
on (mailupdate -l y) if you wish to get graph emails. Only run 'mailupdate' once a day, or you will have duplicate dates in
your log file, which will distort your graph data (although minimally).

See the 'gnuplot_scripts' and 'awk_scripts' directory for example graph rendering files. Remember to manually add the rendering
of graphs in the 'mailupdates' script (see the 'plotGraph' function in 'mailupdate').

The section for the adding of ratio tables in 'mailupdate' (mailupdate -r y) is an example for tracking portfolios where ratios
of for example stocks and bonds is important. The calculations in this section are examples only, and if needed, will have to be
adapted manually. A sample for the ratio table has been added for measuring stock/bond ratio (a 60/40 stock bond portfolio is a
well-known strategy for long-term retirement investing).

Requires ssmtp to be installed and configured correctly

Requires gnuplot for rendering of graph images

NEW: add stock automatically with 'autotrade' script. See example 'autotrading' data file under data/user_data. Add stocks with historic rates
by adding a number as an optional parameter indicating how many days in the past rates will be looked up ('look-back'). Only the
last rate of that day will be used. The 'p' and 'u' flag indicate the final number in the row is either a price or a unit amount.
Units will be added directly, prices will be calculated from the rate of the day 'autotrade' is being run, minus the 'look-back' amount.

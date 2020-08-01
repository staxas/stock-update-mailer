#!/usr/bin/awk -f

# NOTE: The calculations in this script are to ensure two stocks/indices are plotted
# as one single entity.

# a = date
# b = amountTraded
# c = rateDiffPercent
# d = amount Sustainable + Em Markets
# e = ((rdf sust / d) * amt sust) + ((rdf em.mrk / d) * amt em.mrk)
# e is average rateDiffPercentage of Sustainable and Em Markets combined

BEGIN{RS="---"; FS="\n"}
{split($2,a, " ")
split($6,b," ")
split($10,c," ")
d=b[2]+b[5]
e=0
if (c[2] != 0 && d != 0)
  e=e+( ( c[2]/d ) * b[2] )
if (c[5] != 0 && d != 0)
  e=e+( ( c[5]/d ) * b[5] )
print a[2] " " c[2] " " c[3] " " c[4] " " c[5] " " e}

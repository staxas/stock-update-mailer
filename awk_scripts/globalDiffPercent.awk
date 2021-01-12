#!/usr/bin/awk -f

BEGIN{RS="---"; FS="\n"}
{split($2,a, " ")
split($15,b," ")
split($9,c," ")
bonds=( c[6]+c[10] ) / 2
stocks=( c[2]+c[3]+c[4]+c[5]+c[7]+c[8]+c[9]+c[11]+c[12] ) /9
 print a[2] " " b[2] " " stocks " " bonds}

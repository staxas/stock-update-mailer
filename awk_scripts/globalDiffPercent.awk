#!/usr/bin/awk -f

BEGIN{RS="---"; FS="\n"}
{split($2,a, " ")
split($15,b," ")
 print a[2] " " b[2]}

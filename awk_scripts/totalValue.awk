#!/usr/bin/awk -f

BEGIN{RS="---"; FS="\n"}
{split($2,a, " ")
split($13,b," ")
split($14,c," ")
 print a[2] " " b[2] " " c[2]}

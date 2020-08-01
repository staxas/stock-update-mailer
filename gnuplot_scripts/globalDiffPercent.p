set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output \"${fileroot}/globalDiffPercent.png\"
set key left bottom
set y2tics
set arrow from graph 0,first 0 to graph 1, first 0 nohead
set xdata time
set timefmt \"%Y.%m.%d\"
set xrange [\"${startDate}\":\"${d}\"]
set format x \"%m/%d\"
set timefmt \"%Y.%m.%d\"

file=\"${graph_data_file}\";
plot file using 1:2 with lines title 'Total difference %'

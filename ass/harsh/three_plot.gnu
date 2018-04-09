#!/usr/bin/gnuplot

set term postscript eps enhanced color 22
set output 'three.eps'

set style data histograms
set style histogram errorbars gap 0 lw 1.5
set key right
set boxwidth 1 relative

set datafile separator "\t"
set xtics border in scale 0,0 offset character 0, 0, 0 
set style fill pattern 1 border -1

set title "Analysis of {/Symbol a} and {/Symbol b}"
set xlabel "Groups" 
set xlabel  offset character 0, -0.5, 0
set ylabel "Time" 

plot \
newhistogram "G1" lt 2 fs pattern 1, \
'nthree1.txt' u 2:3:4:xtic(1) title "data1" , \
'uthree1.txt' u 2:3:4:xtic(1) title "data2" , \
newhistogram "G2" lt 2 fs pattern 1, \
'nthree2.txt' u 2:3:4:xtic(1) notitle , \
'uthree2.txt' u 2:3:4:xtic(1) notitle



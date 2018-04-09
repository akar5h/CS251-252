#!/usr/bin/gnuplot

set term postscript eps enhanced color 22
set output 'two.eps'

set style data histograms
set style histogram errorbars gap 0 lw 1.5
set key right
set boxwidth 1 relative

set datafile separator "\t"
set xtics border in scale 0,0 offset character 0, 0, 0 
set style fill pattern 1 border -1

set title "Different distributions"
set xlabel "Values" 
set xlabel  offset character 0, -0.5, 0
set ylabel "Frequency" 

plot \
newhistogram "Normal" lt 2 fs pattern 1, \
'ntwo.txt' u 3:2:4:xtic(1) title "data" , \
newhistogram "Uniform" lt 2 fs pattern 1, \
'utwo.txt' u 3:2:4:xtic(1) notitle



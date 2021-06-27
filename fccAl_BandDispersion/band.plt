
set terminal postscript eps enhanced 28 lw 2
set output "fccAl_band.eps"
set ylabel 'Energy (eV)'

set ytics 5

unset key

x1 = 1
x2 = 1.5
x3 = 1.8536
x4 = 2.9142
x5 = 3.7802
x6 = 4.3926
x7 = 4.7462
x8 = 5.4533
x9 = 6.0656
x10 = 6.0656
xmax = 6.4192
ymin = -15
ymax = 35
ef = 8.2612

set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "X" x1, "W" x2, "K" x3, "{/Symbol G}" x4, "L" x5, "U" x6, "W" x7, "L" x8, "K" x9, "U" x10, "X" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2
set arrow 2 nohead from x2,ymin to x2,ymax lt 2
set arrow 3 nohead from x3,ymin to x3,ymax lt 2
set arrow 4 nohead from x4,ymin to x4,ymax lt 2
set arrow 5 nohead from x5,ymin to x5,ymax lt 2
set arrow 6 nohead from x6,ymin to x6,ymax lt 2
set arrow 7 nohead from x7,ymin to x7,ymax lt 2
set arrow 8 nohead from x8,ymin to x8,ymax lt 2
set arrow 9 nohead from x9,ymin to x9,ymax lt 2

plot 'al.band.cg.gnu' using 1:($2-ef) w l


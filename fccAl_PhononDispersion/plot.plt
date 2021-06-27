set term postscript enhanced color "TimesNewRoman" 18
set output 'fccAl_PhononDispersion.ps'

set nokey
set noxtics
set ylabel "Frequency [1/cm]"
set title "Phonon Dispersion of fccAl"
set xzeroaxis lw 3
set border 15 lw 3

set encoding iso_8859_1

THz= 33.3000

E_min=     0.0
E_max=    350
Label_position=    -7

set label  "{/Symbol G}"  at   0.0000 , Label_position
set label  "X"  at    1.0000 , Label_position
set label  "{/Symbol G}"  at    2.4142 , Label_position
set label  "L"  at    3.2802 , Label_position
set label  "X"  at    4.1463 , Label_position
set label  "W"  at    4.6463 , Label_position
set label  "L"  at    5.3534 , Label_position

set arrow nohead from   1.00000, E_min   to   1.00000, E_max  lw 3
set arrow nohead from   2.4142, E_min   to   2.4142, E_max  lw 3
set arrow nohead from   3.2802, E_min   to   3.2802, E_max  lw 3
set arrow nohead from   4.1463, E_min   to   4.1463, E_max  lw 3
set arrow nohead from   4.6463, E_min   to   4.6463, E_max  lw 3

plot [:] [E_min:E_max] 'alph.plot' u 1:2 w lines lt 1 lw 3


set term postscript enhanced color "TimesNewRoman" 18
set output 'Al444.Thz.ps'

set nokey
set noxtics
set ylabel "Frequency, Thz"
set title "Phonon calculations for Al444"
set xzeroaxis lw 3
set border 15 lw 3

set encoding iso_8859_1

THz= 33.3000

E_min=     0.0
E_max=    11.5
Label_position=    -0.5

set label  "{/Symbol G}"  at   -0.03 , Label_position
set label  "X"  at    0.97 , Label_position
set label  "{/Symbol G}"  at    2.38 , Label_position
set label  "L"  at    3.25 , Label_position
set label  "X"  at    4.12 , Label_position
set label  "W"  at    4.62 , Label_position
set label  "L"  at    5.32 , Label_position

set arrow nohead from   1.00000, E_min   to   1.00000, E_max  lw 3
set arrow nohead from   2.41421, E_min   to   2.41421, E_max  lw 3
set arrow nohead from   3.28024, E_min   to   3.28024, E_max  lw 3
set arrow nohead from   4.14626, E_min   to   4.14626, E_max  lw 3
set arrow nohead from   4.64626, E_min   to   4.64626, E_max  lw 3

plot [:] [E_min:E_max] 'Frequency' u 1:($2/THz) w lines lt 1 lw 3


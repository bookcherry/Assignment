set terminal postscript eps enhanced 28 lw 2
set output "fccAl_dos.eps"
set xlabel 'energy (eV)'
set ylabel 'Density Of States (states/eV)'
plot 'al.dos' using ($1-8.329):2 with lines
set terminal pngcairo enhanced

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12


set style line 1 lc rgb '#8b1a0e' pt 7 lt 1 lw 2 pi -1 ps 1.5 # --- red
set style line 7 lc rgb '#BF3030' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- red1
set style line 8 lc rgb '#FF3030' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- red2

set style line 2 lc rgb '#5e9c36' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- green
set style line 9 lc rgb '#238b49' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- green1
set style line 10 lc rgb '#B0F260' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- green2

set style line 3 lc rgb '#A9BDE6' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- blue
set style line 11 lc rgb '#2A4480' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- blue1
set style line 12 lc rgb '#06266FF' pt 7 lt 7 lw 2 pi -1 ps 1.5 # --- blue2

set style line 4 lc rgb '#F9C96D' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- brown

set style line 5 lc rgb '#c3c3c3' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- gray

set style line 6 lc rgb '#E47833' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- orange
set style line 13 lc rgb '#FFB540' pt 7 lt 3 lw 2 pi -1 ps 1.5 # --- orange1
set style line 14 lc rgb '#FFD300' pt 7 lt 6 lw 2 pi -1 ps 1.5 # --- orange2

set ytics (0,'π/8' pi/8, 'π/4' pi/4, '3π/8' 3*pi/8, 'π/2' pi/2, '5π/8' 5*pi/8,'3π/4' 3*pi/4, '7π/8' 7*pi/8, 'π' pi)

set style line 99 lc rgb '#ffffff' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- branco

set yrange [pi/2 -0.2:pi+0.1]

set pointintervalbox 3

set output "Gr4.png"

set key outside bottom center horizontal spacing .5

set ylabel '{/Symbol q}(t = 20s) equilibrio'
set xlabel '{/Symbol W} Hz'

plot "F_Omega.dat" notitle w l ls 2


set terminal pngcairo enhanced

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12


set style line 2  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
set style line 3  lc rgb '#0042ad' lt 1 lw 1.5 #      .
set style line 4  lc rgb '#0060ad' lt 1 lw 1.5 #      .
set style line 5  lc rgb '#007cad' lt 1 lw 1.5 #      .
set style line 6  lc rgb '#0099ad' lt 1 lw 1.5 #      .
set style line 7  lc rgb '#00ada4' lt 1 lw 1.5 #      .
set style line 8  lc rgb '#00ad88' lt 1 lw 1.5 #      .
set style line 9  lc rgb '#00ad6b' lt 1 lw 1.5 #      .
set style line 10 lc rgb '#00ad4e' lt 1 lw 1.5 #      .
set style line 11 lc rgb '#00ad31' lt 1 lw 1.5 #      .
set style line 12 lc rgb '#00ad14' lt 1 lw 1.5 #      .
set style line 13 lc rgb '#09ad00' lt 1 lw 1.5 # --- green


set xtics (0,'π/8' pi/8, 'π/4' pi/4, '3π/8' 3*pi/8, 'π/2' pi/2, '5π/8' 5*pi/8,'3π/4' 3*pi/4, '7π/8' 7*pi/8, 'π' pi)

set xrange [0:3*pi/4]
set style line 99 lc rgb '#ffffff' pt 7 lt 2 lw 2 pi -1 ps 1.5 # --- branco

set pointintervalbox 3

set output "Gr5.png"

set ylabel '{/Symbol w}(t) Hz'
set xlabel '{/Symbol q}(t) rad'

set cbrange [0.3:3.3]
set cbtics ('{/Symbol W}=0.3Hz' 0.3,'{/Symbol W}=3.3Hz' 3.3) offset 0,0.5 scale 0
set palette defined (\
    1  '#0025ad', \
    2  '#0042ad', \
    3  '#0060ad', \
    4  '#007cad', \
    5  '#0099ad', \
    6  '#00ada4', \
    7  '#00ad88', \
    8  '#00ad6b', \
    9  '#00ad4e', \
    10 '#00ad31', \
    11 '#00ad14', \
    12 '#09ad00' \
    )

plot "PhaseSpace0.3.dat" notitle w l ls 2, \
	"PhaseSpace0.6.dat" notitle w l ls 3, \
	"PhaseSpace0.9.dat" notitle w l ls 4, \
	"PhaseSpace1.2.dat" notitle w l ls 5, \
	"PhaseSpace1.5.dat" notitle w l ls 6, \
	"PhaseSpace1.8.dat" notitle w l ls 7, \
	"PhaseSpace2.1.dat" notitle w l ls 8, \
	"PhaseSpace2.4.dat" notitle w l ls 9, \
	"PhaseSpace2.7.dat" notitle w l ls 10,\
	"PhaseSpace3.0.dat" notitle w l ls 11,\
	"PhaseSpace3.3.dat" notitle w l ls 12,\
	"PhaseSpace3.6.dat" notitle w l ls 13,\
	1/0 notitle w image
	

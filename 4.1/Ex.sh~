#!/bin/bash

python ExExtra.py 0 0.3 > Out0.0-0.3.dat
python ExExtra.py 0 10 > Out0.0-10.dat
python ExExtra.py 0 100 > Out0.0-100.dat

python ExExtra.py 0.1 0.3 > Out0.1-0.3.dat
python ExExtra.py 1.5 0.3 > Out1.5-0.3.dat
python ExExtra.py 2.5 0.3 > Out2-0.3.dat

python ExExtra.py 0.1 1.6 > Out0.1-1.0.dat
python ExExtra.py 1.5 1.6 > Out1.5-1.0.dat
python ExExtra.py 2.5 1.6 > Out2.0-1.0.dat

python ExExtra.py 0.1 2.1 > Out0.1-1.2.dat
python ExExtra.py 1.5 2.1 > Out1.5-1.2.dat
python ExExtra.py 2.5 2.1 > Out2.0-1.2.dat

gnuplot Ex1.gp

python ExVar.py 0 0.3 > var0-0.3.dat
python ExVar.py 0 1.5 > var0-1.5.dat
python ExVar.py 0 2.1 > var0-2.1.dat

gnuplot Ex2.gp

python ExVar.py 3.1415 0.3 > varPi-0.3.dat
python ExVar.py 3.1415 1.5 > varPi-1.5.dat
python ExVar.py 3.1415 2.1 > varPi-2.1.dat

gnuplot Ex3.gp

python ExF_Omega.py 2 > F_Omega.dat

gnuplot Ex4.gp

python phaseSpace.py 0.1 0.3 > PhaseSpace0.3.dat
python phaseSpace.py 0.1 0.6 > PhaseSpace0.6.dat
python phaseSpace.py 0.1 0.9 > PhaseSpace0.9.dat
python phaseSpace.py 0.1 1.2 > PhaseSpace1.2.dat
python phaseSpace.py 0.1 1.5 > PhaseSpace1.5.dat
python phaseSpace.py 0.1 1.8 > PhaseSpace1.8.dat
python phaseSpace.py 0.1 2.1 > PhaseSpace2.1.dat
python phaseSpace.py 0.1 2.4 > PhaseSpace2.4.dat
python phaseSpace.py 0.1 2.7 > PhaseSpace2.7.dat
python phaseSpace.py 0.1 3.0 > PhaseSpace3.0.dat
python phaseSpace.py 0.1 3.3 > PhaseSpace3.3.dat
python phaseSpace.py 0.1 3.6 > PhaseSpace3.6.dat

gnuplot Ex5.gp

python ExQr.py 0.1 0 > Qr0.1-0.dat
python ExQr.py 0.1 2 > Qr0.1-2.dat
python ExQr.py 0.1 4 > Qr0.1-4.dat
python ExQr.py 0.1 6 > Qr0.1-6.dat
python ExQr.py 0.1 8 > Qr0.1-8.dat
python ExQr.py 0.1 10 > Qr0.1-10.dat

gnuplot Ex6.gp
gnuplot Ex7.gp

gnuplot Ex.gp

pdflatex Ex.tex

def RK4(f):
    return lambda t, y, dt: (
            lambda dy1: (
            lambda dy2: (
            lambda dy3: (
            lambda dy4: (dy1 + 2*dy2 + 2*dy3 + dy4)/6
            )( dt * f( t + dt  , y + dy3   ) )
	    )( dt * f( t + dt/2, y + dy2/2 ) )
	    )( dt * f( t + dt/2, y + dy1/2 ) )
	    )( dt * f( t       , y         ) )
 
 
from math import sin, cos
import sys

if len(sys.argv) > 2:
	y0 = float(sys.argv[1])
	O2 = float(sys.argv[2])
else:
	y0 , O2, = 0.001 , 2
	
g,a = 10, 5


dy = RK4(lambda t, y: sin(y)*((g/a) + pow(O2,2)*cos(y)))

t, y, dt = 0., y0, .01
TMAX = 40

while t <= TMAX:
	#if abs(round(t) - t) < 1e-5:
	if (t > 10 and t < 10 + dt): #Condicao para um pequeno deslocamento em t = 10s
		y=y+0.01
		t = t+dt
	else:
		print("%2.2f \t %4.6f " % (t, y))
		t, y = t + dt, y + dy( t, y + dy( t, y, dt ), dt )

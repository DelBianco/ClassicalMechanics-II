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
m=1

dy = RK4(lambda t, y: sin(y)*((g/a) + pow(O2,2)*cos(y)))

t, y, dt = 0., y0, .001
dydt = 0
Qr = g*cos(y) - m*a*y - m*a*pow(sin(y),2)*pow(O2,2)
while t <= 10 :
	print("%2.2f \t %4.6f " % (y , Qr))
	t, y = t + dt, y + dy( t, y + dy( t, y, dt ), dt )
	t, dydt = t + dt, dydt + dy( t, dydt, dt )
	Qr = g*cos(y) - m*a*dydt - m*a*pow(sin(y),2)*pow(O2,2)

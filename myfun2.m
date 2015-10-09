function F = myfun2(x,xini)

d = 1.20;
d = 2.03;
d = 0.9646;
d=1.1689;
d=0.9646;
d=1.1689;
s=0.74;
dinf=3.545;
dinf=4.327;
dinf=3.2272;
dinf=3.6706;
dinf=4.327;
dinf=3.5451;
dinf=4.3139;
dinf=3.2272;
dinf=3.2272;
dinf=3.6706;
lamba=0.3544;
psi=0.0;

display('this xini')

xini


t2 = (s^2.0)*(1.0-(d/dinf))-(s^2.0/dinf^2.0)*(psi+0.5);

t21 = (-1.0/s)*(1-(2.0*sinh(x(1))/sinh(xini+x(1))))+s*tanh((xini+x(1))/2.0);

t21 = t21 * t21 * (-0.5); 

%%%%the constraint is t21c > 0

F=xini - t2 - t21;


%F = [ x(2) - t1 - t12];


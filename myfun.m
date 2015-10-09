function F = myfun(x)

d = 1.20;
d = 2.03;
d = 0.9646;
d=1.1689;
d=0.9646;
d=2.54;
s=0.7;
dinf=3.545;
dinf=4.327;
dinf=3.2272;
dinf=3.6706;
dinf=4.327;
dinf=3.5451;
dinf=4.3139;
dinf=3.2272;
dinf=3.2272;
dinf=5.081;
lamba=0.3544;
psi=0.0;

t1 = s^2.0*(1.0-(d/dinf))-(s^2.0/dinf^2.0)*(psi-0.5);

t12 = (1.0/s)*(1-(2.0*sinh(x(1))/sinh(x(1)+x(2))))-s*tanh((x(1)+x(2))/2.0);

t12 = t12 * t12 * (-0.5);




t2 = (s^2.0)*(1.0-(d/dinf))-(s^2.0/dinf^2.0)*(psi+0.5);

t21 = (-1.0/s)*(1-(2.0*sinh(x(2))/sinh(x(1)+x(2))))+s*tanh((x(1)+x(2))/2.0);

t21 = t21 * t21 * (-0.5); 

%%%%the constraint is t21c > 0

F = [ x(1) - t2 - t21;x(2) - t1 - t12];


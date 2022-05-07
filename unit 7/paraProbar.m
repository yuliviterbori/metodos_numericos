# verificamos
f = @(t,y)(t^2+y)
a=0;
b=1;
ya=1;
M=3
% = metodoEuler(f,a,b,ya,M)
H = metodoHeun(f,a,b,ya,M)
# solucion real
yreal = @(t)(-(t.^2)-2*t-2+3*exp(t));
h=(b-a)/M;
t=a:h:b;
hold on
plot(t,yreal(t))
grid on


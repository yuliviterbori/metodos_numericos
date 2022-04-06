clc
clear all
% valor de la funcion
f=@(x)cos(x);
x=0.8;
dfx0=-sin(x);
k=1:20;
h=10 .^(-k)';
F0h2 = (f(x+h)-f(x-h)) ./(2*h);
ERR0h2 = abs(F0h2-dfx0);
F0h4 = (-f(x+2*h)+8*f(x+h)-8*f(x-h)+f(x-2*h)) ./(12*h);
ERR0h4 = abs(F0h4-dfx0);
errth2 = abs(sin(x).*(h.^2)/6);
errth4 = abs(sin(x).*(h.^4)/30);
[F0h2, ERR0h2, errth2]
[F0h4, ERR0h4, errth4]

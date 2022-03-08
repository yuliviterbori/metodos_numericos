% Script para ingresar puntos en un grafico y luego hallar 
% el polinomio interpolador


clear
clc
axis([-5 5 -5 5])
grid
hold on
%Número de puntos a ingresar
n = 5;
for i = 1:n
    [x(i), y(i)] = ginput(1);
    plot(x(i), y(i), 'o')
end
[polinomio, L] = metodo_lagrange(x', y')
x=-5:0.01:5
plot(x, polyval(polinomio, x'))
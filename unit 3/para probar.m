%% para probar la funcion

%% queremos modelar la funcion sen(x) con 5 puntos 
%% en el intervalo de 0 a pi/2
%% la funcion exacta
xx = -pi/4:0.001:pi
plot(xx, sin(xx))

x = 0:pi/5:pi/2
y = sin(x)

%[polinomio, MDV] = metodo_directo(x',y')
%[polinomio, L] = metodo_lagrange(x',y')
[polinomio, D] = metodo_newton(x',y')

% graficamos el polinomio
hold on
plot(xx, polyval(polinomio, xx'))


grid on
plot(x,y,'x')
legend('sen(x)','aproximacion','puntos de interpolacion')
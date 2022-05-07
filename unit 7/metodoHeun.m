function H=metodoHeun(f,a,b,ya,M)
% METODO DE HEUN
% Entradas
% f: la funcion que depende de t,y [f(t,y)]
% a y b los extremos del intervalo en el que queremos hallar y
% ya el valor inicial de y, y(a)=ya
% M es el numero de pasos
% SALIDAS
% E matriz cuya primera columna son los valores de t
% y la segunda los valores de y para esos puntos

h = (b-a)/M;
t = a:h:b;
y = zeros(1, M+1);
p = zeros(1, M+1);
y(1)=ya;
p(1)=ya;
for k=1:M
  p(k+1) = y(k)+h*f(t(k),y(k));
  y(k+1) = y(k)+h/2*(f(t(k),y(k))+f(t(k+1),p(k+1)));
endfor
H = [t',y']
plot(t,y)
grid
end

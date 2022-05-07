function E=metodoEuler(f,a,b,ya,M)
% METODO DE EULER
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
y(1)=ya;
for k=1:M
  y(k+1)=y(k)+h*f(t(k),y(k));
endfor
E = [t',y']
plot(t,y)
grid
end


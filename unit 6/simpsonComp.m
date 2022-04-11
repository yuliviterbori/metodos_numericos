function [I] = simpsonComp(f,a,b,N)
  % REGLA DE SIMPSON COMPUESTA
  % f la funcion que queremos integrar
  % a y b el intervalo en el cual queremos integrar
  % N la cantidad de intervalos (significa que hay 2N+1 puntos en total) 
  
  % I la integral obtenida
  h = (b-a)/(2*N);
  X = a:h:b;
  Y = f(X);
  I = (Y(1)+Y(2*N+1))/3;
  I = I + (4/3)*sum(Y(2:2:2*N))+(2/3)*sum(Y(3:2:(2*N-1)));
  I = I*h;
end
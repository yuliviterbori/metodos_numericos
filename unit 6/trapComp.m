function [I] = trapComp(f,a,b,N)
  % REGLA DEL TRAPECIO COMPUESTA
  % f la funcion que queremos integrar
  % a y b el intervalo en el cual queremos integrar
  % N la cantidad de parciones 
  
  % I la integral obtenida
  
  h = (b-a)/N;
  X = a:h:b;
  Y = f(X);
  I = (Y(1)+Y(N+1))/2 + sum(Y(2:N));
  I = I*h;
  
  
end
function [polinomio, L] = metodo_lagrange(x,y)
  % x puntos en el eje de las abcisas vector columna
  % y puntos en el eje de las ordenadas vector columna
  % polinomio que pasa por esos puntos [aN,aN-1, ..., a0]
  % L matriz con coeficientes de los polinomios de lagrange
  
  % tamanho de L
  w = length(x);
  L = zeros(w);
  for k = 1:w
    % hallamos la fila k, que es el polinomio
    % de lagrange L_N,k = (x-x0)/(xk-x0) * ... * (x-xN)/(xk-xN)
    LK = 1
    for j = 1:w
      if j~=k
        LK = conv(LK, poly(x(j)))./(x(k)-x(j));
      endif
    endfor
    L(k,:) = LK;
  endfor
  polinomio = y'*L
  
endfunction
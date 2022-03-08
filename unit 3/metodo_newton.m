function [polinomio, D] = metodo_newton(x,y)
  % x puntos en el eje de las abcisas vector columna
  % y puntos en el eje de las ordenadas vector columna
  % polinomio que pasa por esos puntos [aN,aN-1, ..., a0]
  % D matriz de las diferencias divididas
  
  % tamanho de L
  w = length(x);
  D = zeros(w);
  D(:,1) = y;
  for k=2:w
    for j=k:w
      D(j,k) = (D(j,k-1)-D(j-1,k-1))/(x(j)-x(j-k+1));
    endfor
  endfor
  % el polinomio seria a0+a1(x-x0)+a2(x-x0)(x-x1).....
  % donde ai=D(i,i)
  
  % algoritmo para hallar los coeficientes reales del polinomio
  polinomio = D(w,w);
  for k=w-1:-1:1
    % multiplicamos el polinomio anterior 
    % por (x-x_N-k) y sumar a_N-k+1
    polinomio = conv(polinomio, poly(x(k)))
    m = length(polinomio)
    polinomio(m) = polinomio(m)+D(k, k)
  endfor
endfunction
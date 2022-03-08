function [polinomio, MDV] = metodo_directo(x,y)
  % x puntos en el eje de las abcisas vector columna
  % y puntos en el eje de las ordenadas vector columna
  % polinomio que pasa por esos puntos [aN,aN-1, ..., a0]
  % matriz de vandermonde
  
  
  % w es el tamanho de la matriz de vdm o la cantidad de puntos
  w = length(x)
  MDV = ones(w)
  for k=2:w
    MDV(:,k) = x.^(k-1);
  endfor
  MDV
  % Para obtener [a0, a1, a2, ..., aN] los coeficientes
  % del polinomio (N = w-1)
  coef = inv(MDV)*y;
  polinomio = coef(w:-1:1)
endfunction
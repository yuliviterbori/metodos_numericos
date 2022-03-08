function [L, U] = hallarlu(A)
  % A es una matriz cuadrada
  n = length(A)
  U = A
  L = eye(n) % matriz identidad de nxn
  for k=1:n-1
    % hallar el pivot
    % en este caso vamos a suponer que no hay intercambio de filas
    % el pivot es U(k,k)
    for j=k+1:n
      L(j,k) = U(j,k)/U(k,k);
      U(j,:) = U(j,:)-L(j,k)*U(k,:);
    endfor
  endfor
endfunction
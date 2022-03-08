function [inv_A] = Gauss_Jordan( A )
% Hallamamos la inversa de la matriz A usando el metodo de Gauss Jordan
n = length(A);
aumentada = [A eye(n)]
for elem_diag = 1:n

  %Inicio de pivoteo
  [valor, pos] = max( abs( aumentada(elem_diag:n  ,elem_diag)) );
  pos = pos + elem_diag - 1;
  %Iniciar el intercambio de filas
  fila_aux = aumentada(elem_diag, :);
  aumentada(elem_diag, :) = aumentada(pos, :);
  aumentada(pos, :) = fila_aux;
  %Terminamos el pivoteo
  if( aumentada(elem_diag, elem_diag) == 0 )
    display('La matriz es singular')
    break;
  end
  
  %Inicio del escalonamiento
  for fil = 1:n
    if ( fil == elem_diag )
      continue;
    end
    m = aumentada(fil, elem_diag ) / aumentada(elem_diag, elem_diag);
    %aumentada(fil, :) -= m*aumentada(elem_diag, :);
    aumentada(fil, :) = aumentada(fil, :)  - m*aumentada(elem_diag, :);
  end
  aumentada(elem_diag, :) /= aumentada(elem_diag, elem_diag); 

end

inv_A = aumentada(:, n+1:2*n )

end
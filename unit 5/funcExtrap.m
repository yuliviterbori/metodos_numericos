function [D] = funcExtrap(f, x, h, n_max)
     % f la funcion
     % x el punto en el cual queremos hallar la derivada
     % h el valor inicial de h
     % n_max la cantidad maxima de filas de la matriz D
     
     % D la tabla que contiene todas las aproximaciones por el metodo de interpolacion
     
     % Primera fila de la tabla
     D(1,1) = (f(x+h)-f(x-h))/(2*h);
     for n=2:n_max
       h=h/2;
       D(n,1) = (f(x+h)-f(x-h))/(2*h);
       for k=2:n
         D(n,k) = ((4^(k-1))*D(n,k-1)-D(n-1,k-1))/((4^(k-1))-1);
       endfor
     endfor
end
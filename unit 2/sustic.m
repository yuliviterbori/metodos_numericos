function X = sustic(A, b)
   %% A es una matriz triangular superior
   %% b un vector columna
   %% x es la solucion del sistema
   n = length(b);
   X = zeros(n,1);
   X(n) = b(n)/A(n,n)
   for k=n-1:-1:1
     X(k) = (b(k)-A(k,k+1:n)*X(k+1:n,1))/A(k, k)
   endfor
   X
 endfunction
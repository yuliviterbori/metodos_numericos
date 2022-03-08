function X = resolverporlu(A,b)
  [L, U] = hallarlu(A);
  % resolvemos el sistema LY=b
   n = length(b);
   
   Y = zeros(n,1);
   Y(1) = b(1)
   for k=2:n
     Y(k) = b(k)-L(k,1:k-1)*Y(1:k-1);
   endfor
   
   %ahora tenemos que resolver UX=Y
   X = sustic(U,Y)
  
 endfunction
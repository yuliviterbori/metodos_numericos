function [p,k,err,P]=fixpt(g,p0,tol,max1)
  % INPUT
  % g es la funcion como un string
  % p0 es el valor inicial cercano del punto fijo
  % tol es la tolerancia
  % max1 es el numero maximo de iteraciones
  % OUTPUT
  % k es el numero de iteraciones que se realizaron
  % p es la aproximacion del punto fijo encontrado
  % err es el error de la aproximacion
  % P contiene la secuencia {pn}

  P(1) = p0;
  for k=2:max1+1
    P(k) = feval(g, P(k-1));
    err=abs(P(k)-P(k-1));
    p=P(k)
    if (err<tol)
      break
    endif
  endfor
  if k==max1+1
    disp('Se exedio el numero maximo de iteraciones')
  endif
  
endfunction
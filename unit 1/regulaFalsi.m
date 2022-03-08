function [c, err, yc] = regulaFalsi(f, a, b, delta, epsilon, nmax)
  % Calcular la raiz de la funcion f dentro del intervalo [a,b] con una tolerancia 
  % delta en el eje x, epsilon en el eje y, y un numero maximo de iteraciones nmax
  % INPUT
  % f     la funcion (handle function)
  % a y b los extremos del intervalo
  % delta la tolerancia en el eje x
  % epsilon la tolerancia en el eje y
  % nmax el numero maximo de iteraciones
  % OUTPUT
  % c     la raiz encontrada
  % err   el error aproximado en el eje x
  % yc    el error aproximado en el eje y
  ya = feval(f,a);
  yb = feval(f,b);
  if ya*yb>0
    disp("a y b no cumplen las condiciones iniciales")
    return
  endif

  for k=1:nmax
    c = (b*f(a)-a*f(b))/(f(a)-f(b));
    yc = feval(f,c);
    if ya*yc<0
      % a no se modifica
      % b ahora es c anterior
      b = c;
    elseif yb*yc<0
      % b no se modifica
      % a pasa a ser c
      a = c;
    else
      % yc es cero
      break
    endif
    if yc<epsilon
      disp("se alcanzo la tolerancia en el eje y")
      break
    endif
    if min(abs(a-c), abs(b-c))<delta
      disp("se alcanzo la tolerancia en el eje x")
      break
    endif
  endfor
  err = b-a;
  yc = feval(f,c);
endfunction
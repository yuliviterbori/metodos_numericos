function [c, err, yc] = bisec(f, a, b, delta)
  % Calcular la raiz de la funcion f dentro del intervalo [a,b] con una tolerancia delta
  % INPUT
  % f     la funcion (handle function)
  % a y b los extremos del intervalo
  % delta la tolerancia en el eje x
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

  while b-a>delta
    c = (a+b)/2;
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
  endwhile
  c = (a+b)/2;
  err = b-a;
  yc = feval(f,c);
end


%%% OPCIONAL
%%% %Número de bisecciones
%%% Si se desea usar for en vez de while puede hallar el valor de Nmin
%%% Nmin = floor( ( log(b-a) - log(epsilon) ) / log(2) );
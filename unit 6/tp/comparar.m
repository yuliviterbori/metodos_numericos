function [I] = comparar(f, a, b)
%Integrantes:
% Guillermo David Benitez Santacruz
% Silvia Jacqueline Barreto Cristaldo
% Osvaldo Isaias Rivarola Britez
% Melissa Olmedo Britos
% Diego Alfredo Ovando Acuña

I = zeros(4,1); % Vector de resultados
X = a:0.01:b; % Servirá para graficar las funciones



% TRAPECIO
h=b-a;      x=a:h:b;
I(1) = ( f(b)+f(a) )*h/2;

polTrapecio = Lagrange(x,f); %Llamando al interpolador
Y = polyval(polTrapecio,X); %Hallando las ordenadas con el polinomio

subplot(2,2,1), plot(X,Y,'r'); %Ubicando el interpolador con el subplot
hold on; plot(X,f(X),'k'); legend('Trapecio','Funcion dada');
%Y sobre la misma grafica se ubica la funcion dada para comparar la aprox

%Analogamente se hara con los siguientes metodos


% SIMPSON
h=(b-a)/2;      x=a:h:b;
I(2) = ( f(x(1)) + 4*f(x(2)) + f(x(3)) )*h/3;

polSimpson = Lagrange(x,f);
Y = polyval(polSimpson,X);

subplot(2,2,2), plot(X,Y,'y');
hold on; plot(X,f(X),'k'); legend('Simpson','Funcion dada');



% 3/8 SIMPSON
h=(b-a)/3;      x=a:h:b;
I(3) = ( f(x(1)) + 3*f(x(2)) + 3*f(x(3)) + f(x(4)) )*3*h/8;

pol38Simpson = Lagrange(x,f);
Y = polyval(pol38Simpson,X);

subplot(2,2,3), plot(X,Y,'g');
hold on; plot(X,f(X),'k'); legend('3/8 Simpson','Funcion dada');



% BOOLE
h=(b-a)/4;      x=a:h:b;
I(4) = ( 7*f(x(1)) + 32*f(x(2)) + 12*f(x(3)) + 32*f(x(4)) + 7*f(x(5)) )*2*h/45;

polBoole = Lagrange(x,f);
Y = polyval(polBoole,X);

subplot(2,2,4), plot(X,Y,'b');
hold on; plot(X,f(X),'k'); legend('Boole','Funcion dada');


end


% Probar:
% comparar(@(x)exp(x), 0, 1)

% Mathews pag 377 ejemplo 7.2
% comparar(@(x)(1+exp(-x).*sin(4.*x)), 0, 1)

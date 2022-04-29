function [ pol ] = Lagrange(x,f)
%Integrantes:
% Guillermo David Benitez Santacruz
% Silvia Jacqueline Barreto Cristaldo
% Osvaldo Isaias Rivarola Britez
% Melissa Olmedo Britos
% Diego Alfredo Ovando Acuña

y = f(x);
N = length(x);
L = zeros(N,N);

% Coeficientes de Lagrange
for k = 1:N
    V = 1;
    for j = 1:N
        if k~=j
            V = conv( V,poly(x(j)) )/( x(k)-x(j) );
        end
    end
    L(k,:) = V;
end

pol = y*L;

end

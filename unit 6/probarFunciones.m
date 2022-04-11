% definimos la funcion
f = @(x)(exp(x));
a = 0;
b = 1;
for N=2:20
  trapComp(f,a,b,N)
end
% El valor real seria 
exp(1)-1
for N=2:20
  simpsonComp(f,a,b,N)
end
% El valor real seria 
exp(1)-1
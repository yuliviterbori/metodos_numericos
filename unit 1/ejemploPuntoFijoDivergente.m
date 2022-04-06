% Ejemplo punto fijo divergente
f = @(x) (x^2+x-4);
p0 = 1.5
tol = 1e-6
max1 = 5
[p, k, err, P] = fixpt(f,p0,tol,max1)
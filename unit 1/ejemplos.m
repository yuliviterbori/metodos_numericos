% Ejemplo de uso de algunas funciones
f = @(x) cos(x);
p0 = 0.4
tol = 1e-6
max1 = 50
[p, k, err, P] = fixpt(f,p0,tol,max1)
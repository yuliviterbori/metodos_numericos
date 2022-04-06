clc
clear all
% definimos la funcion
f = @(x)(exp(x));
x0 = 1

k = 1:20;
h = 10 .^(-k)';
[h, f(x0+h), f(x0+h)-f(x0), (f(x0+h)-f(x0))./h]
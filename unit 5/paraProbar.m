clc
clear all
% definimos la funcion exponencial
fun = @(x)(exp(x));
x0 = 1;
n_max = 4;
h = 1;
funcExtrap(fun,x0,h,n_max)

format long
% probamos con la funcion sen
fun = @(x)(sin(x));
x0 = pi/4;
h=0.1;
funcExtrap(fun,x0,h,n_max)

clc
clear all
close all
l=11;
a=0;
b=l;
n=11;
f=@(x)  (5+0.25*x.^2);
h= (f(b)-f(a))/(l-1);
I2=(h/3)*[f(a)+f(b)+4*sum(f(2:2:n-1))+2*sum(f(3:2:n-2))];
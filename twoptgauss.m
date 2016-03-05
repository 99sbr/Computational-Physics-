clc
clear all
close all
a=0;
b=11;
f=@(x) 5+0.25*x.^2;
p=(a+b)/2;
q=(b-a)/2;
g=@(z) f(p+q*z)*q;
I=g(-(1/sqrt(3)))+g(1/sqrt(3));
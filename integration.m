clc
clear all
close all

f=@(x) x.^2;
a=1;
b=5;

p=(a+b)/2;
q=(a-b)/2;

g=@(z) f(p+q*z)*q;
I=abs(g(-1/(sqrt(3)))+g(1/(sqrt(3))));
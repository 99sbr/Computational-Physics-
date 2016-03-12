clc
clear all
close all
e=[0,-1,-1,-1];
f=[2.04,2.04,2.04,2.04];
g=[-1,-1,-1,0];
r=[40.8,0.8,0.8,200.8];
x = Tridiag(e,f,g,r);
disp(x)
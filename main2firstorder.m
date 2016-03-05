% main function for solving 2 first order differential equation
clc
clear all
close all
h=0.05;
x1=0;
xn=0.25;
x=[x1:h:xn];
n=length(x);
y=zeros(1,n);
z=zeros(1,n);
z(1)=1;
z1=z(1);
y(1)=0;
y1=y(1);
f=@(x,y,z) z;
g=@(x,y,z) -2*z-y;
[y,z]=secondorder(f,g,x,y1,z1,h);
figure
plot(x,y)
figure
plot(x,z)

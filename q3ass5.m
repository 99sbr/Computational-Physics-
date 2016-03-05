% code for question 3 of assignment 5 differential equation
clc
clear all
close all
m1=12000;
m2=10000;
m3=8000;
k1=3000;
k2=2400;
k3=1800;
t=0:50;
n=length(t);
x1=zeros(1,n);
x2=zeros(1,n);
x3=zeros(1,n);

g1=@(x1,x2) (-k1/m1)*x1+(k2/m1)*(x2-x1);
g2=@(x1,x2,x3) (k2/m2)*(x1-x2)+(k3/m2)*(x3-x2);
g3=@(x2,x3) (k3/m3)*(x2-x3);
v1i=1;
x1i=0;
x2i=0;
x3i=0;
v2i=0;
v3i=0;

[x1, x2, x3, v1 ,v2, v3] = heun4(g1,g2,g3,t,x1i,x2i,x3i,v1i,v2i,v3i);
figure
plot(t,x1)
figure
plot(t,x2)
figure
plot(t,x3)
figure
plot(t,v1)
figure
plot(t,v2)
figure
plot(t,v3)


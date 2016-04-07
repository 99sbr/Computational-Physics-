clc
clear all
close all
r=1;
n=1000;
m=10000;
sx=zeros(1,n+1);
sy=zeros(1,n+1);
sz=zeros(1,n+1);
disp=zeros(1,m);
for j=1:m
for i=1:n
phi=2*pi*rand();
g=-1+2*rand();
theta=acos(g);
sx(i+1)=sx(i)+r*sin(theta)*cos(phi);
sy(i+1)=sy(i)+r*sin(theta)*sin(phi);
sz(i+1)=sz(i)+r*cos(theta);
end
x=sx(end)-sx(1);
y=sy(end)-sy(1);
z=sz(end)-sz(1);
disp(j)=sqrt(x^2+y^2+z^2);
end
figure(1)
plot3(sx,sy,sz)
figure(2)
hist(disp,50)
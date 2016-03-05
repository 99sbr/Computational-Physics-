%pendulum problem using euler chromer
clc
clear all
close all
dt=0.04;
G=9.8;
l=1;
m=0.01;
t=[0:dt:10];
n=length(t);
theta=zeros(1,n);
w=zeros(1,n);
w(1)=5;
theta(1)=0.2;
f=@(t,theta,w) w;
g=@(t,theta,w) -(G/l)*theta;
for i=1:n-1
    w(i+1)=w(i)+dt*g(t,theta(i),w(i));
    theta(i+1)=theta(i)+dt*f(t,theta(i),w(i+1));
end
figure
plot(t,theta)
%energy cal
E=zeros(n,1);
n=length(t);
for i=1:n
    E(i)=(1/2)*m*l*l*w(i)+(1/2)*m*G*l*theta(i)^2;
end
figure
plot(t,E)
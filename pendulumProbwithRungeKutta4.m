%pendulum problem using rungekutta order 4
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
h=dt;
for i=1:n-1
     s1=f(t(i),theta(i),w(i));
    p1=g(t(i),theta(i),w(i));
    s2=f(t(i)+(h/2),theta(i)+s1*(h/2),w(i)+p1*(h/2));
    p2=g(t(i)+(h/2),theta(i)+s1*(h/2),w(i)+p1*(h/2));
    s3=f(t(i)+(h/2),theta(i)+s2*(h/2),w(i)+p2*(h/2));
    p3=g(t(i)+(h/2),theta(i)+s2*(h/2),w(i)+p2*(h/2));
    s4=f(t(i)+h,theta(i)+s3*h,w(i)+p3*h);
    p4=f(t(i)+h,theta(i)+s3*h,w(i)+p3*h);
    s=(1/6)*[s1+2*s2+2*s3+s4];
    p=(1/6)*[p1+2*p2+2*p3+p4];
    theta(i+1)=theta(i)+h*s;
    w(i+1)=w(i)+h*p;
end
E=(1/2)*m*(l*l)*(w.^2)+(1/2)*m*G*l*(theta.^2);
figure
plot(t,theta)
figure
plot(t,E)
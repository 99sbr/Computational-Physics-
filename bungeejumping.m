%bungee jumping problem
clc
clear all
close all
G=9.8;
cd=0.25;
l=5;
m=68;
coeff=0.15;
k=500;
dt=0.01;
tn=180;
t=0:dt:tn;
n=length(t);
y=zeros(1,n);
v=zeros(1,n);
y(1)=0;
v(1)=0;
f=@(t,y,v) v;
 g1=@(t,y,v) G-sign(v)*cd*(v^2/m);
  g2=@(t,y,v) G-sign(v)*cd*((v^2)/m)-(k/m)*(y-l)-coeff*(v/m);
% heuns algo
for i=1:n-1
    if y(i)<l
       
        s1=f(t(i),y(i),v(i));
        p1=g1(t(i),y(i),v(i));
        s2=f(t(i+1),y(i)+dt*s1,v(i)+dt*p1);
        p2=g1(t(i+1),y(i)+dt*s1,v(i)+dt*p1);
        y(i+1)=y(i)+(dt/2)*(s1+s2);
        v(i+1)=v(i)+(dt/2)*(p1+p2);
    else
       
        s1=f(t(i),y(i),v(i));
        p1=g2(t(i),y(i),v(i));
        s2=f(t(i+1),y(i)+dt*s1,v(i)+dt*p1);
        p2=g2(t(i+1),y(i)+dt*s1,v(i)+dt*p1);
        y(i+1)=y(i)+(dt/2)*(s1+s2);
        v(i+1)=v(i)+(dt/2)*(p1+p2);
    end
end
figure
plot(t,y)
figure
plot(t,v)
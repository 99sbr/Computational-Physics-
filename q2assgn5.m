clc
clear all
close all
dt=0.125;
t=0:dt:50;
n=length(t);
v=zeros(n,1);
y=zeros(n,1); 
% v =dy/dt
y(1)=1;v(1)=1;
f=@(v) v;
g=@(y,v) (1-y^2)*v-y;
for i=1:n-1
    s1=f(v(i));
    p1=g(y(i),v(i));
    s2=f(v(i)+dt*p1);
    p2=g(y(i)+dt*s1,v(i)+dt*p1);
    y(i+1)=y(i)+(dt/2)*(s1+s2);
    v(i+1)=v(i)+(dt/2)*(p1+p2);
end
figure
plot(t,y) % y vs t
figure
plot(t,v) % dy/dt vs t
figure
plot(y,v) %phase space plot
figure
plot3(t,y,v) %3-d plot
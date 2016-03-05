% projectile problem
clc
clear all
close all
theta=30; % in degrees
theta_rad=theta*(pi/180);
t1=0;
tn=80; % in sec
dt=0.01;
t=t1:dt:tn;
G=9.8;
u=700; % initial velocity
n=length(t);
x=zeros(n,1);
y=zeros(n,1);
vx=zeros(n,1);
vy=zeros(n,1);
vx(1)=u*cos(theta_rad); %initial value of horizontal component of velocity
vy(1)=u*sin(theta_rad); %initial value of horizontal component of velocity
gx=@(t,x,vx) 0;
gy=@(t,y,vy) -G;
fx=@(t,x,vx) vx;
fy=@(t,y,vy) vy;

for i=1:n-1
    s1x=fx(t(i),x(i),vx(i));
    p1x=gx(t(i),x(i),vx(i));
    s2x=fx(t(i+1),x(i)+dt*s1x,vx(i)+dt*p1x);
    p2x=gx(t(i+1),x(i)+dt*s1x,vx(i)+dt*p1x);
    x(i+1)=x(i)+(dt/2)*(s1x+s2x);
    vx(i+1)=vx(i)+(dt/2)*(p1x+p2x);
    
    s1y=fy(t(i),y(i),vy(i));
    p1y=gy(t(i),y(i),vy(i));
    s2y=fy(t(i+1),y(i)+dt*s1y,vy(i)+dt*p1y);
    p2y=gy(t(i+1),y(i)+dt*s1y,vy(i)+dt*p1y);
    y(i+1)=y(i)+(dt/2)*(s1y+s2y);
    vy(i+1)=vy(i)+(dt/2)*(p1y+p2y);
    
    
end
plot(x,y)


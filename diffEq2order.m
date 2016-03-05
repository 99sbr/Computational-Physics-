clc
clear all
close all
x1=0;
xn=0.25;
h=0.05;
x=[x1:h:xn];
n=length(x);
y=zeros(1,n);
z=zeros(1,n);
y(1)=0;
z(1)=1;
z1=z(1);
y1=y(1);
f=@(x,y,z) z;
g=@(x,y,z) -2*z-y;
%runge kutta order 2/ huens method 
% for i=1:n-1
%     
% s1=f(x(i),y(i),z(i));
% p1=g(x(i),y(i),z(i));
% s2=f(x(i+1),y(i)+h*s1,z(i)+h*p1);
% p2=g(x(i+1),y(i)+h*s1,z(i)+h*p1);
% z(i+1)=z(i)+ (h/2)*(p1+p2);
% y(i+1)=y(i)+(h/2)*(s1+s2);
% end

%runge kutta order 2/ huens method 

for i=1:n-1
    s1=f(x(i),y(i),z(i));
    p1=g(x(i),y(i),z(i));
    s2=f(x(i)+(h/2),y(i)+s1*(h/2),z(i)+p1*(h/2));
    p2=g(x(i)+(h/2),y(i)+s1*(h/2),z(i)+p1*(h/2));
    s3=f(x(i)+(h/2),y(i)+s2*(h/2),z(i)+p2*(h/2));
    p3=g(x(i)+(h/2),y(i)+s2*(h/2),z(i)+p2*(h/2));
    s4=f(x(i)+h,y(i)+s3*h,z(i)+p3*h);
    p4=f(x(i)+h,y(i)+s3*h,z(i)+p3*h);
    s=(1/6)*[s1+2*s2+2*s3+s4];
    p=(1/6)*[p1+2*p2+2*p3+p4];
    y(i+1)=y(i)+h*s;
    z(i+1)=z(i)+h*p;
end


figure
plot(x,y)
figure
plot(y,z)





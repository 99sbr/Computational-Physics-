clc
clear all
close all
h=0.05;
x=[0:h:0.25]; % formation of x matrix
f=@(x,y) -x*y; % unknown function
n=length(x);
y=zeros(1,n);
y(1)=1;
%algo
for i=1:n-1
    s1=f(x(i),y(i));
    s2=f(x(i)+(h/2),y(i)+s1*(h/2));
    s3=f(x(i)+(h/2),y(i)+s2*(h/2));
    s4=f(x(i)+h,y(i)+s3*h);
    s=(1/6)*[s1+2*s2+2*s3+s4];
    y(i+1)=y(i)+h*s;
end
disp(y)
plot(x,y)
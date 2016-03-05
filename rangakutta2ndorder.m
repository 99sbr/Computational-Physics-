clc
clear all
close all
h=0.05;
x=[0:h:0.25]; % formation of x matrix
f=@(x,y) -x*y; % unknown function
n=length(x);
y=zeros(1,n);
y(1)=1;
% algo
for i=1:n-1
    s1=f(x(i),y(i));
    s2=f(x(i)+h,y(i)+h*s1);
    y(i+1)=y(i)+h*((s1+s2)/2);
end
plot(x,y)
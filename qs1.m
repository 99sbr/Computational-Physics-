clc;
clear all;
close all;
vo=30;
yo=1.8;
y=1;
x=90;
g=9.8;

f=@(theta) tan(theta).*x -((g*x^2)./(2*vo^2.*(cos(theta)).^2))+yo-y;


it=0;

x1=3;
x2=4;
tol=1e-5;
while(abs((x1-x2)/x1)>tol)
it=it+1;
x3=(x1+x2)/2;
if f(x1)*f(x3)<0
x2=x3;
else
x1=x3;
end
end




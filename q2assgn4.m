clc
clear all
close all
t=[0,10,20,30,35,40,45,50];
q=[4,4.8,5.2,5.0,4.6,4.3,4.3,5.0];
c=[10,35,55,52,40,37,32,34];
y=q.*c;
h=diff(t);
n=length(t);
sm=0;
for i=1:n-1
    sm=sm+h(i)*((y(i)+y(i+1))/2);
end
disp(sm)
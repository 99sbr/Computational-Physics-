clc
clear all
close all
x=[1:5];
y=@(x) (x.^3+x.^2+x.^1+1);
x_init=2.5;
n=length(x)-1;
sum=0;
for i=1:n+1
    prod=1;
    for j=1:n+1
         if i~=j
             prod=prod*(( x_init-x(j))/(x(i)-x(j)));
         end
    end
    sum=sum+prod*y(i);
end
y_init=sum;
        

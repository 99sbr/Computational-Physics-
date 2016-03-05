clc
clear all
close all

A=[2 -6 -1; -3 -1 6; -8 1 2];
k=3;
n=3;
x=zeros(k,1);
b=[-38;-34;-20];
A=[A b];

for k=1:(n-1)
    for i=(k+1):n
        u=A(i,k)/A(k,k);
        A(i,k)=0;
         for j=(k+1):(n+1)
            A(i,j)=A(i,j)-u*A(k,j);
         end
    end
end

for i=(n-1):-1:1
    sum=0;
    for j=(i+1):n
        sum=A(i,j)*x(j)+sum;
    end
    x(i)=(A(i,(n+1))-sum)/A(i,i);
end



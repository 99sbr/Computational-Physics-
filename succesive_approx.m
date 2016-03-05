clc
clear all
close all
x1=0.5;

it=0;
while(1)
it=it+1;
x2=root(x1);
if abs((x2-x1)/x1>10^(-5))
x1=x2;
else
break;
end
end
disp(x1)
disp(it)

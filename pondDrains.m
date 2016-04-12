clc
clear all
close all
A=[ 1.17 0.97 0.67 0.45 0.32 0.18 0 ];
h=[6 5 4 3 2 1 0 ];
g=9.8;
e=1;
t=0;
h1=h(1);
area1=area(1);
d=0.25;
dt=0.1;
f=@(h1,area1)  - ((pi*d^2)/(4*area1))*sqrt(2*g*(h1+e));
plot(h,A,'--')
hold on
while(1)
    s1=f(h1,area1);
    s2=f(h1+dt*s1,area1);
    h2=h1+(dt*((s1+s2)/2));
    t=t+dt;
    area2=lagrange(h,A,h2);
    plot(h2,area2,'r.')
    
    if (h2<0)
        break;
        
    end
    
    h1=h2;
    area1=area2;
end
hold off 

clc
clear all
close all
kg=0.0178;
ti=1950;
tf=2050;
dt=5;
t=ti:dt:tf;
n=length(t);
p=zeros(1,n);
p(1)=2560;
f=@(t,p) kg*p;



for i=1:n-1
    s1=f(t(i),p(i));
    s2=f(t(i)+(dt/2),p(i)+s1*(dt/2));
    s3=f(t(i)+(dt/2),p(i)+s2*(dt/2));
    s4=f(t(i+1),p(i)+s3*dt);
    s=(1/6)*(s1+2*s2+2*s3+s4);
    p(i+1)=p(i)+dt*s;
end
figure
plot(t,p,'r')
figure
m=[2560,2780,3040,3350,3710,4090,4450,4850,5280,5690,6080];
plot(m)

    
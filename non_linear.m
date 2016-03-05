clc
clear all
close all
l=10;
h1=0.05;
t_inf=200;
t1=300;
tf=400;
x=0:0.01:10;
zg1=-15;
sigma=2.7*(10)^(-10);
g=@(x,t,z) -h1*(t_inf-t)-sigma*((t_inf)^4-(t)^4);
temp1= heun(g,x,t1,zg1);
en=length(temp1);
tf1=temp1(en);

zg2=-30;
temp2= heun(g,x,t1,zg2);
tf2=temp2(en);
figure
plot(x,temp1,'r')
hold on
plot(x,temp2,'b')
legend('show')
grid on

res1=residual(g,x,t1,zg1,tf1)
res2=residual(g,x,t1,zg2,tf2)
tol=10^(-5);
zc=bisection(@(zg) residual(g,x,t1,zg,tf),zg1,zg2,tol);
temp=heun(g,x,t1,zc);

plot(x,temp)
hold off

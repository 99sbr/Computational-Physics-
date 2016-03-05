function res = residual(g,x,t1,zg,tf)
temp=heun(g,x,t1,zg);
res=temp(end)-tf;
end
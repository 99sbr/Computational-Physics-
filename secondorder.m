function [y,z] =secondorder(f,g,x,y,z,h)
n=length(x);
for i=1:n-1
    
s1=f(x(i),y(i),z(i));
p1=g(x(i),y(i),z(i));
s2=f(x(i+1),y(i)+h*s1,z(i)+h*p1);
p2=g(x(i+1),y(i)+h*s1,z(i)+h*p1);
z(i+1)=z(i)+ (h/2)*(p1+p2);
y(i+1)=y(i)+(h/2)*(s1+s2);
end

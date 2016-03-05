function sf = newton(v,s,vf)
n=length(v);
b=zeros(n,n);
for j=2:n
    for i=1:n-j+1
        b(i,j)= (b(i+1,j-1)-b(i,j-1))/(v(i+j-1)-v(i));
    end
end

pro=1;
sm=b(1,1);
for j=2:n
    pro=pro*(vf-v(j-1));
    sm=sm+b(1,j)*pro;
end
sf=sm;
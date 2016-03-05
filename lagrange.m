function sf = lagrange(v,s,vf)

n=length(v)-1;
su=0;

for i=1:n+1
    prod=1;
    for j=1:n+1
        if (i~=j)
            prod=prod*((vf-v(j))/(v(i)-v(j)));
        end
    end
    su=su+prod*s(i);
end
sf=su;
            
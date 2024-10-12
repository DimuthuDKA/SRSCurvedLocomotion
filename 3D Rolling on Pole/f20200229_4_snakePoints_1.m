function x=f20200229_4_snakePoints_1(q,n)
xi=linspace(0,4,n);
x=zeros(n,3);
for i=2:n
    x(i,:)=XX(q,xi(i));
end
end


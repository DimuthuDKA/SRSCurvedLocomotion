function [X] = XX(y,xi)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y1=y(1:3);
y2=y(4:6);
y3=y(7:9);
y4=y(10:12);

X=zeros(4);
if 0<=xi && xi<1
    X=Txi(y1,xi);
elseif 1<=xi && xi<2
    X=Txi(y1,1)*Txi(y2,xi-1);
elseif 2<=xi && xi<3
    X=Txi(y1,1)*Txi(y2,1)*Txi(y3,xi-2);
elseif 3<=xi && xi<=4
    X=Txi(y1,1)*Txi(y2,1)*Txi(y3,1)*Txi(y4,xi-3);
else
    disp('err')
end
X=X(1:3,4);

end


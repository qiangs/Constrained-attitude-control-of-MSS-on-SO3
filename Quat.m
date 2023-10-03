function Q = Quat(theta,n)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
n=n/norm(n);
Q=zeros(4,1);
Q(1)=n(1)*sin(theta/2);
Q(2)=n(2)*sin(theta/2);
Q(3)=n(3)*sin(theta/2);
Q(4)=cos(theta/2);
end


clear all;
close all;
clc;

theta=deg2rad(65);
a=-1:0.01:cos(theta);
b=rad2deg(acos(a));
n=size(a,2);
y1=zeros(n,1);
y2=zeros(n,1);
for i=1:n
    y1(i)=(a(i)+1)^2;
    
    y2(i)=-0.8*log((cos(theta)-a(i))/(1+cos(theta)));
end

plot(b,y1)
hold on
plot(b,y2)
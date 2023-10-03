function x = x_hat2x(x_hat)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
   x = zeros(3,1);
%    x_hat = [0 -x(3) x(2);
%               x(3) 0  -x(1);
%               -x(2) x(1) 0];
   x(1) = x_hat(3,2);
   x(2) = x_hat(1,3);
   x(3) = x_hat(2,1);
end


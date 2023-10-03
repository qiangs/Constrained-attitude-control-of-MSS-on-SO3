function x_hat = x2x_hat(x)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    x_hat = [0 -x(3) x(2);
              x(3) 0  -x(1);
              -x(2) x(1) 0];
end


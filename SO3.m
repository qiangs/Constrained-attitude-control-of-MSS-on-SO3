function R = SO3(ang, x)
%ang 角度 rad
%x 转轴 3*1
%    R= cos(ang)*eye(3)+(1-cos(ang))*x*x'+sin(ang)*x2x_hat(x);
   R= eye(3)+(1-cos(ang))*x2x_hat(x)*x2x_hat(x)+sin(ang)*x2x_hat(x);
end


function [P] = pivoting(A,B,theta)
% A为原向量，B为轴向量，theta为绕过角度，逆时针转动为正
% A向量绕B逆时针转theta得到P
% 测试P = pivoting([1,0,0],[0,0,1],pi/4)
    P = A*cos(theta)+cross(B,A)*sin(theta)+B*(B*A')*(1-cos(theta));
end


function [P] = pivoting(A,B,theta)
% AΪԭ������BΪ��������thetaΪ�ƹ��Ƕȣ���ʱ��ת��Ϊ��
% A������B��ʱ��תtheta�õ�P
% ����P = pivoting([1,0,0],[0,0,1],pi/4)
    P = A*cos(theta)+cross(B,A)*sin(theta)+B*(B*A')*(1-cos(theta));
end


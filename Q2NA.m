function [n,Ang] = Q2NA(Q)
% 四元数转化为轴角表示法,n为旋转轴，Ang为旋转角度rad.
%Q=[qv,q0]
  n=zeros(3,1);
  Ang=2*acos(Q(4));
  
%   if abs(Ang)>pi
%      if Ang>0
%         Ang=(-2*pi+Ang);
%      else
%         Ang=(2*pi-Ang);
%      end
%   end
  
  n(1)=Q(1)/sin(Ang/2);
  n(2)=Q(2)/sin(Ang/2);
  n(3)=Q(3)/sin(Ang/2);
  n=n/norm(n);
end


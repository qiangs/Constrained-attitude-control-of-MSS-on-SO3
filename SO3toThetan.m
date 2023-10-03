function [n,theta] = SO3toThetan(R)
%  SO3 to  n  theta/rad
    
    n=zeros(3,1);
    theta=0;
    theta=acos((trace(R)-1)/2);
    [A,lambda]=eig(R);
    lambda=diag(lambda);
    a=find(lambda==1);
    n_temp=A(:,a(1));
    n=n_temp/norm(n_temp);
end


J=[50 1.2 0.9;
   1.2 65 1.4;
   0.9 1.4 25];

D=[1 0 0 sqrt(3)/3;
   0 1 0 sqrt(3)/3;
   0 0 1 sqrt(3)/3];

E=diag([0.1,0.1,0,1]);

G=inv(J)*D*E*D';

G_bar=0.5*(G+G');

d = eig(G');

A=[1/3 0 0;
   0 1/3 0;
   0 0 1/3];
inv(A)

try chol(G_bar)
    disp('Matrix is symmetric positive definite.')
catch ME
    disp('Matrix is not symmetric positive definite')
end
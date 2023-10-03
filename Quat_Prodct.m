% Quaternion Prodect

function y = Quat_Prodct(Quat1,Quat2)

q = Quat1(1:3,1);
q0 = Quat1(4,1);

p = Quat2(1:3,1);
p0 = Quat2(4,1);

q_x = [0        -q(3)       q(2); 
       q(3)     0           -q(1);
       -q(2)    q(1)        0];

y13 = q0*p + p0*q + q_x*p;
y4 = q0*p0 - q'*p;

y = [y13 ; y4];



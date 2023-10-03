function  cirxyz = plotCircle(A,ksi,color)
%三维空间画圆，A为过圆心及原点的法向量,ksi为圆的张角
% color 1 黑色，2绿色
    B=A;
    A=cos(ksi)*A;
    
    n=B';%法向量n
    r=sin(ksi);%圆的半径为1
    c=A';%圆心的坐标
    theta=(0:2*pi/100:2*pi)';%theta角从0到2*pi
    a=cross(n,[1 0 0]);%n与i叉乘，求取a向量
    if ~any(a)%如果a为零向量，将n与j叉乘
        a=cross(n,[0 1 0]);
    end
    b=cross(n,a);%求取b向量
    a=a/norm(a);%单位化a向量
    b=b/norm(b);%单位化b向量
    
    c1=c(1)*ones(size(theta,1),1);
    c2=c(2)*ones(size(theta,1),1);
    c3=c(3)*ones(size(theta,1),1);
    
    x=c1+r*a(1)*cos(theta)+r*b(1)*sin(theta);%圆上各点的x坐标
    y=c2+r*a(2)*cos(theta)+r*b(2)*sin(theta);%圆上各点的y坐标
    z=c3+r*a(3)*cos(theta)+r*b(3)*sin(theta);%圆上各点的z坐标
    if color==1
        plot3(x,y,z,'r-.','linewidth',2)
    else
        plot3(x,y,z,'g-.','linewidth',2)  
    end
    if color==3
        plot3(x,y,z,'k-','linewidth',2)
    end
    cirxyz =[x,y,z];
end


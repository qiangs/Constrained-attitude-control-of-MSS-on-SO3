function  ballNew(x0,n)
%  x0球心坐标，n由多少块组成

    h = x0(3); % 高度
    r = 1;  %半径
    pos = x0(1,1:2); % 圆心位置
    t=0:0.01:(2*pi);  % 圆滑性设置
    t=[t,0];
    psi = pi/n;
    X1=pos(1)+r*sin(t);
    Y1=pos(2)+r*cos(t); 
    Z1=h*ones(size(t));
    XYZ1 =[X1;Y1;Z1]';
    XYZnew1 = zeros(size(XYZ1));
    XYZnew2 = zeros(size(XYZ1));
    for i =1:n
        for j=1:size(XYZ1,1)
            XYZnew1(j,:) = pivoting(XYZ1(j,:),[1,0,0],(i-1)*psi);
            XYZnew2(j,:) = pivoting(XYZ1(j,:),[0,1,0],(i-1)*psi);
            
        end
        plot3(XYZnew1(:,1),XYZnew1(:,2),XYZnew1(:,3),'-','Color',[0.75 0.75 0.75],'LineWidth',0.1)
        hold on
        plot3(XYZnew2(:,1),XYZnew2(:,2),XYZnew2(:,3),'-','Color',[0.75 0.75 0.75],'LineWidth',0.1) 
    end
end
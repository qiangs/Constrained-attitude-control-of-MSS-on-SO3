
figure()
theta=rad2deg(X(:,end));
theta(2)=theta(2)-1.5;
X1=X(:,1:3)';
[m,n]=size(X1);
load ant_Id.mat;
load tel_Id.mat;
% load Cirxyz_y.mat;  %两条线的圆数据，有变化从3D图中改变
% load Cirxyz_z.mat;
pp = 0;
plotantd=ant_Id(2:end,1:50:end)';
plotteld=tel_Id(2:end,1:50:end)';

load tel_I1.mat;
load ant_I1.mat;

plotant1=ant_I1(2:end,1:50:end)';
plottel1=tel_I1(2:end,1:50:end)';

load tel_I2.mat;
load ant_I2.mat;

plotant2=ant_I2(2:end,1:50:end)';
plottel2=tel_I2(2:end,1:50:end)';
load tel_I3.mat;
load ant_I3.mat;

plotant3=ant_I3(2:end,1:50:end)';
plottel3=tel_I3(2:end,1:50:end)';
%calculated trajectory
[m,n]=size(plotantd);

lamdaantd=zeros(m,1);
phiantd=zeros(m,1);
lamdateld=zeros(m,1);
phiteld=zeros(m,1);

lamdaant1=zeros(m,1);
phiant1=zeros(m,1);
lamdatel1=zeros(m,1);
phitel1=zeros(m,1);

lamdaant2=zeros(m,1);
phiant2=zeros(m,1);
lamdatel2=zeros(m,1);
phitel2=zeros(m,1);

lamdaant3=zeros(m,1);
phiant3=zeros(m,1);
lamdatel3=zeros(m,1);
phitel3=zeros(m,1);


for i=1:m
    [x,y]=Cal_JW(plotantd(i,1),plotantd(i,2),plotantd(i,3));
    lamdaantd(i)=x;
    phiantd(i)=y;
    [x,y]=Cal_JW(plotteld(i,1),plotteld(i,2),plotteld(i,3));
    lamdateld(i)=x;
    phiteld(i)=y;
    
    [x,y]=Cal_JW(plotant1(i,1),plotant1(i,2),plotant1(i,3));
    lamdaant1(i)=x;
    phiant1(i)=y;
    [x,y]=Cal_JW(plottel1(i,1),plottel1(i,2),plottel1(i,3));
    lamdatel1(i)=x;
    phitel1(i)=y;
    
    [x,y]=Cal_JW(plotant2(i,1),plotant2(i,2),plotant2(i,3));
    lamdaant2(i)=x;
    phiant2(i)=y;
    [x,y]=Cal_JW(plottel2(i,1),plottel2(i,2),plottel2(i,3));
    lamdatel2(i)=x;
    phitel2(i)=y;
    
    [x,y]=Cal_JW(plotant3(i,1),plotant3(i,2),plotant3(i,3));
    lamdaant3(i)=x;
    phiant3(i)=y;
    [x,y]=Cal_JW(plottel3(i,1),plottel3(i,2),plottel3(i,3));
    lamdatel3(i)=x;
    phitel3(i)=y; 
end
% lamdatel3(1)=lamdatel3(2);
% phitel3(1)=phitel3(2);


[m1,n1]=size(X1);

lamda_con=zeros(n1,1);
phi_con=zeros(n1,1);
num_data=1000;
xyz=zeros(3,num_data+1,n1);
xyz_l=zeros(num_data+1,n1);
xyz_f=zeros(num_data+1,n1);

ang=2*pi/num_data;

for j=1:n1
    [x1,y1]=Cal_JW(X1(1,j),X1(2,j),X1(3,j));
    lamda_con(j)=x1;
    phi_con(j)=y1;
    
    R=tran(lamda_con(j),phi_con(j));
    for k=1:num_data+1
        angle=(k-1)*ang;
        r=sin(theta(j)/180*pi);
        x_1=0;
        y_1=r*sin(angle);
        z_1=r*cos(angle);
        
        xyz(:,k,j)=X1(:,j)*cos(theta(j)/180*pi)+R*[x_1,y_1,z_1]';
        xyz(:,k,j)=xyz(:,k,j)/norm(xyz(:,k,j),2);
        
        [p,q]=Cal_JW(xyz(1,k,j),xyz(2,k,j),xyz(3,k,j));
        xyz_l(k,j)=p;
        xyz_f(k,j)=q;
    end     
        
end


%judge the jump point  from 0 to 360
% for cri=1:num_data+1
%     if xyz_l(cri,4)<ang || abs(xyz_l(cri,4)-360)<ang
%         p=cri;
%         break;
%     end
% end


%judge the jump point  from 0 to 360
for cri=1:m-1
    if abs(lamdaantd(cri+1)-lamdaantd(cri))>100
        pp=cri;
        break;
    end
end
    
    
    

plot(lamda_con(1),phi_con(1),'r>');
hold on
plot(lamda_con(2),phi_con(2),'b+');
hold on
plot(lamda_con(3),phi_con(3),'kx');
hold on
plot(lamda_con(4),phi_con(4),'g*');
hold on


% plot(xyz_l(:,1),xyz_f(:,1),'r-');
fill(xyz_l(:,1),xyz_f(:,1),[220/255,220/255,220/255],'linewidth',1);
fill(xyz_l(:,2),xyz_f(:,2),[220/255,220/255,220/255],'linewidth',1);
a1 = [xyz_l(1:188,3);xyz_l(689:end,3)];% 360度附近
b1 = [xyz_f(1:188,3);xyz_f(689:end,3)];

a2 = xyz_l(189:688,3); %0度附近
b2 = xyz_f(189:688,3);

% fill(xyz_l(:,3),xyz_f(:,3),[0.94,0.94,0.94]);
fill(a1,b1,[220/255,220/255,220/255],'linewidth',1);
fill(a2,b2,[220/255,220/255,220/255],'linewidth',1);
fill(xyz_l(:,4),xyz_f(:,4),[220/255,220/255,220/255],'linewidth',1);
% load('xx.mat');
% fill(xx(:,1),xx(:,2),[0.94,0.94,0.94]);
hold on

f1 = plot(lamda_con(1),phi_con(1),'r>','MarkerSize',10);
hold on
f2 = plot(lamda_con(2),phi_con(2),'b+','MarkerSize',10);
hold on
f3 = plot(lamda_con(3),phi_con(3),'kx','MarkerSize',10);
hold on
f4 = plot(lamda_con(4),phi_con(4),'g*','MarkerSize',10);
hold on


if pp == 0 
f5=plot(lamdaantd,phiantd,'r:','linewidth',2);
else
   plot(lamdaantd(1:pp),phiantd(1:pp),'r-','linewidth',1.5);
   hold on
   plot(lamdaantd(pp+1:end),phiantd(pp+1:end),'r-','linewidth',1.5);
   hold on
   plot(lamdaantd(pp:pp+1),phiantd(pp:pp+1),'r--','linewidth',0.5);
end

if pp == 0 
f6=plot(lamdateld,phiteld,'r-.','linewidth',2);
else
   plot(lamdateld(1:pp),phiteld(1:pp),'g--','linewidth',1.5);
   hold on
   plot(lamdateld(pp+1:end),phiteld(pp+1:end),'g--','linewidth',1.5);
   hold on
   plot(lamdateld(pp:pp+1),phiteld(pp:pp+1),'g---','linewidth',0.5);
end

if pp == 0 
f7=plot(lamdaant1,phiant1,'b:','linewidth',2);
else
   plot(lamdaant1(1:pp),phiant1(1:pp),'b-','linewidth',1.5);
   hold on
   plot(lamdaant1(pp+1:end),phiant1(pp+1:end),'b-','linewidth',1.5);
   hold on
   plot(lamdaant1(pp:pp+1),phiant1(pp:pp+1),'b--','linewidth',0.5);
end

if pp == 0 
f8=plot(lamdatel1,phitel1,'b-.','linewidth',2);
else
   plot(lamdatel1(1:pp),phitel1(1:pp),'b--','linewidth',1.5);
   hold on
   plot(lamdatel1(pp+1:end),phitel1(pp+1:end),'b--','linewidth',1.5);
   hold on
   plot(lamdatel1(pp:pp+1),phitel1(pp:pp+1),'b---','linewidth',0.5);
end

if pp == 0
    f9=plot(lamdaant2,phiant2,'m:','linewidth',2);
else
    plot(lamdaant2(1:pp),phiant2(1:pp),'c-','linewidth',1.5);
    hold on
    plot(lamdaant2(pp+1:end),phiant2(pp+1:end),'c-','linewidth',1.5);
    hold on
    plot(lamdaant2(pp:pp+1),phiant2(pp:pp+1),'c--','linewidth',0.5);
end

if pp == 0
    f10=plot(lamdatel2,phitel2,'m-.','linewidth',2);
else
    plot(lamdatel2(1:pp),phitel2(1:pp),'c--','linewidth',1.5);
    hold on
    plot(lamdatel2(pp+1:end),phitel2(pp+1:end),'c--','linewidth',1.5);
    hold on
    plot(lamdatel2(pp:pp+1),phitel2(pp:pp+1),'c---','linewidth',0.5);
end
% 
if pp == 0
    f11=plot(lamdaant3,phiant3,'k:','linewidth',2);
else
    plot(lamdaant3(1:pp),phiant3(1:pp),'k-','linewidth',1.5);
    hold on
    plot(lamdaant3(pp+1:end),phiant3(pp+1:end),'k-','linewidth',1.5);
    hold on
    plot(lamdaant3(pp:pp+1),phiant3(pp:pp+1),'k--','linewidth',0.5);
end

if pp == 0
    f12=plot(lamdatel3,phitel3,'k-.','linewidth',2);
else
    plot(lamdatel3(1:pp),phitel3(1:pp),'k--','linewidth',1.5);
    hold on
    plot(lamdatel3(pp+1:end),phitel3(pp+1:end),'k--','linewidth',1.5);
    hold on
    plot(lamdatel3(pp:pp+1),phitel3(pp:pp+1),'k---','linewidth',0.5);
end
hold on 

plot(lamdaant1(1),phiant1(1),'bo','LineWidth',2,'MarkerSize',5);
hold on
plot(lamdaant2(1),phiant2(1),'mo','LineWidth',2,'MarkerSize',5);
hold on
plot(lamdaant3(1),phiant3(1),'ko','LineWidth',2,'MarkerSize',5);
hold on

plot(lamdatel1(1),phitel1(1),'bo','LineWidth',2,'MarkerSize',5);
hold on
plot(lamdatel2(1),phitel2(1),'mo','LineWidth',2,'MarkerSize',5);
hold on
plot(lamdatel3(1),phitel3(1),'ko','LineWidth',2,'MarkerSize',5);
hold on


plot(lamdaantd(1),phiantd(1),'ro','LineWidth',2,'MarkerSize',5);
hold on
 text(105,83,'T starting','FontName','Arial','Interpreter','latex','FontSize',16);
hold on 
plot(lamdateld(1),phiteld(1),'ro','LineWidth',2,'MarkerSize',5);
 hold on
 text(110,10,'A starting','FontName','Arial','Interpreter','latex','FontSize',16);
hold on
plot(lamdaantd(end),phiantd(end),'rs','LineWidth',2,'MarkerSize',5);
hold on
text(30,-25,'T end','FontName','Arial','Interpreter','latex','FontSize',16);
hold on 
plot(lamdateld(end),phiteld(end),'rs','LineWidth',2,'MarkerSize',5);
text(125,-50,'A end','FontName','Arial','Interpreter','latex','FontSize',16);
%% 画抖动，线上的圆
hold on
% n = size(Cirxyz_y,3);
% for i=1:n
%     p = size(Cirxyz_y,1);
%     for j=1:p
%     [x,y]=Cal_JW(Cirxyz_y(j,1,i),Cirxyz_y(j,2,i),Cirxyz_y(j,3,i));
%     lamdaC1(j)=x;
%     phiC1(j)=y;
%     [x,y]=Cal_JW(Cirxyz_z(j,1,i),Cirxyz_z(j,2,i),Cirxyz_z(j,3,i));
%     lamdaC2(j)=x;
%     phiC2(j)=y;
%     end
%    f7= plot(lamdaC1,phiC1,'r-.','linewidth',1.5);
%     hold on
%    f8= plot(lamdaC2,phiC2,'g-.','linewidth',1.5);
% end
 xlim([0,360]); % 设置坐标轴范围
 xticks(0:90:360)
 ylim([-90,90]); % 设置坐标轴范
 yticks(-90:60:90)
 set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
 set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
 set(get(gca,'YLabel'),'FontSize',20)
xlabel('Azimuth, deg','FontSize',24,'FontName','Arial','Interpreter','latex','FontSize',24);
ylabel('Elevation, deg','FontSize',24,'FontName','Arial','Interpreter','latex','FontSize',24);
 h = legend([f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12],'SFZ 1','SFZ 2','SFZ 3','SMZ 1','APD0','TPD0','APD1','TPD1','APD2','TPD2','APD3','TPD3','FontName','Arial','Interpreter','latex','FontSize',10);
 set(h,'Fontsize',10,'Location','Best')

%  axes('Position',[0.18,0.18,0.15,0.2]); % 生成子图
%  fill(xyz_l(:,2),xyz_f(:,2),[0.94,0.94,0.94],'linewidth',1.5);
%  hold on
%  plot(lamda,phi,'r-','linewidth',2.5);
%  hold on
%  plot(lamda(end),phi(end),'ks','LineWidth',2,'MarkerSize',10);
%  hold on
%  for i=7:n-1
%     p = size(Cirxyz_y,1);
%     for j=1:p
%     [x,y]=Cal_JW(Cirxyz_y(j,1,i),Cirxyz_y(j,2,i),Cirxyz_y(j,3,i));
%     lamdaC1(j)=x;
%     phiC1(j)=y;
%     end
%     plot(lamdaC1,phiC1,'r-.','linewidth',2);
%     hold on
%  end
% text(45,-18,'y axis end','Interpreter','latex','FontSize',16);
%  xlim([62,70]); % 设置坐标轴范围
%  ylim([-5,3]); % 设置坐标轴范围


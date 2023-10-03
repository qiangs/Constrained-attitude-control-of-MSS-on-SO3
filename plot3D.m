figure()
theta=X(:,end);
X1=X(:,1:3)';
[m,n]=size(X1);
% a=theta;
ksi = deg2rad(4.5);
a = rad2deg(theta);
col(1)=1; %红色
col(2)=0; %蓝色
col(3)=0; %绿色
coneNew(X1(:,1),a(1),1);
hold on
coneNew(X1(:,2),a(2),1);
hold on
coneNew(X1(:,3),a(3),1);
hold on
coneNew(X1(:,4),a(4),2);
% hold on
% col(1)=0; %红色
% col(2)=0; %蓝色
% col(3)=1; %绿色
% coneNew(X(:,5),a(5),col);
ballNew([0,0,0],15)
hold on;
load tel_Id.mat;
load ant_Id.mat;

plotyd=tel_Id(2:end,:)';
plotzd=ant_Id(2:end,:)';

load tel_I1.mat;
load ant_I1.mat;

ploty1=tel_I1(2:end,:)';
plotz1=ant_I1(2:end,:)';

load tel_I2.mat;
load ant_I2.mat;

ploty2=tel_I2(2:end,:)';
plotz2=ant_I2(2:end,:)';

load tel_I3.mat;
load ant_I3.mat;

ploty3=tel_I3(2:end,:)';
plotz3=ant_I3(2:end,:)';

plot3(plotyd(1,1),plotyd(1,2),plotyd(1,3),'ko','LineWidth',2,'MarkerSize',8)
hold on;
plot3(plotyd(end,1),plotyd(end,2),plotyd(end,3),'ks','LineWidth',2,'MarkerSize',8)
hold on;
plot3(plotzd(1,1),plotzd(1,2),plotzd(1,3),'ko','LineWidth',2,'MarkerSize',8)
hold on;
plot3(plotzd(end,1),plotzd(end,2),plotzd(end,3),'ks','LineWidth',2,'MarkerSize',8) 
axis off
plot3(plotyd(:,1),plotyd(:,2),plotyd(:,3),'r-','linewidth',2);
hold on
plot3(plotzd(:,1),plotzd(:,2),plotzd(:,3),'r-','linewidth',2);
hold on
plot3(ploty1(:,1),ploty1(:,2),ploty1(:,3),'b-','linewidth',2);
hold on
plot3(plotz1(:,1),plotz1(:,2),plotz1(:,3),'b-','linewidth',2);
hold on
plot3(ploty2(:,1),ploty2(:,2),ploty2(:,3),'g-','linewidth',2);
hold on
plot3(plotz2(:,1),plotz2(:,2),plotz2(:,3),'g-','linewidth',2);
hold on
plot3(ploty3(:,1),ploty3(:,2),ploty3(:,3),'k-','linewidth',2);
hold on
plot3(plotz3(:,1),plotz3(:,2),plotz3(:,3),'k-','linewidth',2);
hold on
k = 1;%黑色
g = 2;%绿色

%% 均匀画圆1
Cirxyz_y=[];
Cirxyz_z=[];
num =1;
for i=1:250:251 
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end
for i=360:100:461
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end 
% 
for i=600:500:1100
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end   
% 
for i=1780:380:2190
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end 
% 
for i=2420
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end 
% 
% 
for i=7501
    Cirxyz = plotCircle(plotyd(i,:),ksi,1);
    camera =plotyd(i,:);
    h = quiver3(0,0,0,camera(1),camera(2),camera(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_y(:,:,num) = Cirxyz;
    
    
    Cirxyz = plotCircle(plotzd(i,:),ksi,2);
    antenna =plotzd(i,:);
    h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1,'Linewidth',2);
    set(h,'maxheadsize',0.2);  %set the size
    set(h,'Color','k');  %set the size
    Cirxyz_z(:,:,num) = Cirxyz;
    num = num+1;
end 

hold on
cirxyz = plotCircle(X1(:,1),b(1),3);
cirxyz = plotCircle(X1(:,2),b(2),3);
cirxyz = plotCircle(X1(:,3),b(3),3);
cirxyz = plotCircle(X1(:,4),b(4),3);
az = 150+50;
el = -10+20;
view(az, el);
save Cirxyz_y
save Cirxyz_z
% xlabel('X轴');        
% ylabel('Y轴');
% zlabel('Z轴');
% view(180, 50);


% num =size(plotyi,1);
% step = 200;
% n=floor(num/step);
% pic_num =1;
% for i =1:n
%     az = 150+50/n*i;
%     el = -10+20/n*i;
%     view(az, el);
%     axis([-1.1 1.1 -1.1 1.1 -1.1 1.1])
%     plot3(plotyi(1:(i-1)*step+1,1),plotyi(1:(i-1)*step+1,2),plotyi(1:(i-1)*step+1,3),'r-','linewidth',1.5);
%     hold on
%     plot3(plotzi(1:(i-1)*step+1,1),plotzi(1:(i-1)*step+1,2),plotzi(1:(i-1)*step+1,3),'b-','linewidth',1.5);
%     hold on
%     
%     camera =plotyi((i-1)*step+1,:);
%     h = quiver3(0,0,0,camera(1),camera(2),camera(3),1);
%     set(h,'maxheadsize',0.3);  %set the size
%     set(h,'Color','k');  %set the size
%     antenna =plotzi((i-1)*step+1,:);
%     h = quiver3(0,0,0,antenna(1),antenna(2),antenna(3),1);
%     set(h,'maxheadsize',0.3);  %set the size
%     set(h,'Color','k');  %set the size
%     
%     pause(0.3)
%     hold on
%        
% %     F=getframe(gcf);
% %     I=frame2im(F);
% %     [I,map]=rgb2ind(I,256);
% %     if pic_num == 1
% %         imwrite(I,map,'Atti_Constr.gif','gif', 'Loopcount',inf,'DelayTime',0.2);
% %     else
% %         imwrite(I,map,'Atti_Constr.gif','gif','WriteMode','append','DelayTime',0.2);
% %     end
% %     pic_num = pic_num + 1;
% end
% 
% 
% for t=0:2:60
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
% 
% for t=8:2:10
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
% 
% for t=12
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
% 
% for t=30:10:40
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
% 
% for t=45:5:50
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
% 
% for t=150
%     p = t/0.02+1;
%     plotyi_data=[];
%     plotzi_data=[];
%     for q=1:8
%         plotyi_data=[plotyi_data,yi_data(:,p,q)];
%         plotzi_data=[plotzi_data,zi_data(:,p,q)];
%     end
%         plotyi_data=[plotyi_data,plotyi_data(:,1)];
%         plotzi_data=[plotzi_data,plotzi_data(:,1)];
%     plot3(plotyi_data(1,:),plotyi_data(2,:),plotyi_data(3,:),'k--','linewidth',1.5)
%     hold on
%     plot3(plotzi_data(1,:),plotzi_data(2,:),plotzi_data(3,:),'g--','linewidth',1.5)
% end
     
% el=10;  %设置仰角为30度。
% for az=200:-5:-180 %让方位角从0变到360，绕z轴一周
%     view(az,el);
%     drawnow;
%     F=getframe(gcf);
%     I=frame2im(F);
%     [I,map]=rgb2ind(I,256);
%     imwrite(I,map,'Atti_Constr.gif','gif','WriteMode','append','DelayTime',0.2);
%     pic_num = pic_num + 1;
% end
% %  
% az= 280;   
% for el=50:-2:10   
%     view(az,el);
%     drawnow;
%     F=getframe(gcf);
%     I=frame2im(F);
%     [I,map]=rgb2ind(I,256);
%     imwrite(I,map,'Atti_Rate_Constr.gif','gif','WriteMode','append','DelayTime',0.2);
%     pic_num = pic_num + 1;
% end  


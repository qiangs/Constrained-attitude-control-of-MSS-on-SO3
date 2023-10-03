%% input

u1(1,:)=-3:0.01:3;
u1(2,:)=-3:0.01:3;
u1(3,:)=-3:0.01:3;
for i=1:size(u1,2)
    w1(:,i) = fcn(u1(:,i),1);
    w2(:,i) = fcn2(u1(:,i),1);
    w3(:,i) = fcn3(u1(:,i),2);
end
% n=size(u1,2);
% l=ones(201,1);
% c=-1:0.01:1;

plot(u1(1,:),w1(1,:),'b--','linewidth',2)
hold on
%plot(u1(1,:),w2(1,:),'k--','linewidth',2)
%hold on
plot(u1(1,:),w3(1,:),'r-','linewidth',2)
% hold on
% plot(l,c,'k:','linewidth',2)
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlabel({'Command torque, N\(\cdot\)m'},'FontSize',20,'Interpreter','latex');
ylabel({'Actual torque, N\(\cdot\)m'},'Interpreter','latex','FontSize',20);
legend('非线性饱和函数','基于死区操作','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(u1(1,:)),max(u1(1,:))]); % 设置坐标轴范围
ylim([-1.05,1.05]); % 设置坐标轴范围
xticks(-3:1:3)



%% Tracking error, consensus error, angular velocity
load Psic.mat

t=Psic(1,:);
Psic=Psic(2:end,:);
figure()
plot(t,Psic(1,:),'b--','linewidth',2)
hold on
plot(t,Psic(2,:),'r-.','linewidth',2)
hold on
plot(t,Psic(3,:),'k:','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\({\sum_{j \in \mathcal{N}_{i}}}\){\(  {\Psi}_{c,i}  \)}'},'Interpreter','latex','FontSize',26);
legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,2]); % 设置坐标轴范围
axes('Position',[0.27,0.66,0.35,0.15]); % 生成子图
t1 = t(1,30/0.02:50/0.02+1);
PsicS1 = Psic(:,30/0.02:50/0.02+1);
plot(t1,PsicS1(1,:),'b--','linewidth',2)
hold on
plot(t1,PsicS1(2,:),'r-.','linewidth',2)
hold on
plot(t1,PsicS1(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
%  ylim([0,1.2]); % 设置坐标轴范围

axes('Position',[0.5,0.32,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
PsicS1 = Psic(:,150/0.02:end);
plot(t1,PsicS1(1,:),'b--','linewidth',2)
hold on
plot(t1,PsicS1(2,:),'r-.','linewidth',2)
hold on
plot(t1,PsicS1(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0*10^-7,1.6*10^-7]); % 设置坐标轴范围
%%

load Psit.mat

t=Psit(1,:);
Psit=Psit(2:end,:);
figure()
plot(t,Psit(1,:),'b--','linewidth',2)
hold on
plot(t,Psit(2,:),'r-.','linewidth',2)
hold on
plot(t,Psit(3,:),'k:','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'{\(  {\Psi}_{t,i}  \)}'},'Interpreter','latex','FontSize',26);
legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,0.605]); % 设置坐标轴范围

axes('Position',[0.3,0.66,0.35,0.15]); % 生成子图
t1 = t(1,45/0.02:65/0.02+1);
PsitS1 = Psit(:,45/0.02:65/0.02+1);
plot(t1,PsitS1(1,:),'b--','linewidth',2)
hold on
plot(t1,PsitS1(2,:),'r-.','linewidth',2)
hold on
plot(t1,PsitS1(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围

% ylim([0,5*10^-3]); % 设置坐标轴范围


axes('Position',[0.5,0.32,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
PsitS1 = Psit(:,150/0.02:end);
plot(t1,PsitS1(1,:),'b--','linewidth',2)
hold on
plot(t1,PsitS1(2,:),'r-.','linewidth',2)
hold on
plot(t1,PsitS1(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0*10^-6,1.2*10^-6]); % 设置坐标轴范围

%%
load norm_eOmega.mat

t=norm_eOmega(1,:);
norm_eOmega=norm_eOmega(2:end,:);
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,norm_eOmega(1,:),'b--','linewidth',2)
hold on
plot(t,norm_eOmega(2,:),'r-.','linewidth',2)
hold on
plot(t,norm_eOmega(3,:),'k:','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(\|  e_{{\Omega}_i}\|\)}, deg/s'},'Interpreter','latex','FontSize',26);
legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,25]); % 设置坐标轴范围

axes('Position',[0.35,0.72,0.3,0.15]); % 生成子图
t1 = t(1,90/0.02:110/0.02+1);
norm_eOmegaS = norm_eOmega(:,90/0.02:110/0.02+1);
% plot(t1,normOmegaS(1,:),'r-','linewidth',2)
% hold on
plot(t1,norm_eOmegaS(1,:),'b--','linewidth',2)
hold on
plot(t1,norm_eOmegaS(2,:),'r-.','linewidth',2)
hold on
plot(t1,norm_eOmegaS(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([-0.06,-0.02]); % 设置坐标轴范围

axes('Position',[0.5,0.35,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
norm_eOmegaS = norm_eOmega(:,150/0.02:end);
% plot(t1,normOmegaS(1,:),'r-','linewidth',2)
% hold on
plot(t1,norm_eOmegaS(1,:),'b--','linewidth',2)
hold on
plot(t1,norm_eOmegaS(2,:),'r-.','linewidth',2)
hold on
plot(t1,norm_eOmegaS(3,:),'k:','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.5*10^-3,7*10^-3]); % 设置坐标轴范围

%% input satruation

load u1.mat
load u2.mat
load u3.mat

t=u1(1,:);
u1=u1(2:end,:);
u2=u2(2:end,:);
u3=u3(2:end,:);

figure()
plot(t,u1(1,:),'b--','linewidth',2);
hold on
plot(t,u1(2,:),'r:','linewidth',2);
hold on
plot(t,u1(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  \bar{w}_{1}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  \bar{{w}}_{1,1}  \)','\(  \bar{{w}}_{2,1}  \)','\(  \bar{{w}}_{3,1}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:4/0.02+1);
u1S = u1(:,0.02/0.02:4/0.02+1);
plot(t1,u1S(1,:),'b--','linewidth',2);
hold on
plot(t1,u1S(2,:),'r:','linewidth',2);
hold on
plot(t1,u1S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:12/0.02+1);
u1S = u1(:,0.02/0.02:12/0.02+1);
plot(t1,u1S(1,:),'b--','linewidth',2);
hold on
plot(t1,u1S(2,:),'r:','linewidth',2);
hold on
plot(t1,u1S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围


    %%
figure()
plot(t,u2(1,:),'b--','linewidth',2);
hold on
plot(t,u2(2,:),'r:','linewidth',2);
hold on
plot(t,u2(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  \bar{w}_{2}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  \bar{w}_{1,2}  \)','\(  \bar{w}_{2,2}  \)','\(  \bar{w}_{3,2}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:8/0.02+1);
u2S = u2(:,0.02/0.02:8/0.02+1);
plot(t1,u2S(1,:),'b--','linewidth',2);
hold on
plot(t1,u2S(2,:),'r:','linewidth',2);
hold on
plot(t1,u2S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:13/0.02+1);
u2S = u2(:,0.02/0.02:13/0.02+1);
plot(t1,u2S(1,:),'b--','linewidth',2);
hold on
plot(t1,u2S(2,:),'r:','linewidth',2);
hold on
plot(t1,u2S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围
%%
figure()
plot(t,u3(1,:),'b--','linewidth',2);
hold on
plot(t,u3(2,:),'r:','linewidth',2);
hold on
plot(t,u3(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  \bar{w}_{3}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  \bar{w}_{1,3}  \)','\(  \bar{w}_{2,3}  \)','\(  \bar{w}_{3,3}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:4/0.02+1);
u3S = u3(:,0.02/0.02:4/0.02+1);
plot(t1,u3S(1,:),'b--','linewidth',2);
hold on
plot(t1,u3S(2,:),'r:','linewidth',2);
hold on
plot(t1,u3S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:10/0.02+1);
u3S = u3(:,0.02/0.02:10/0.02+1);
plot(t1,u3S(1,:),'b--','linewidth',2);
hold on
plot(t1,u3S(2,:),'r:','linewidth',2);
hold on
plot(t1,u3S(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围

%% mixed constraints
load SFZ2.mat
load SMZ.mat
load theta0.mat

t=SFZ2(1,:);
sf=SFZ2(2:end,:);
sm=SMZ(2:end,:);
th0=theta0(2:end,:);

sfA=20*ones(1,size(t,2));
smA=50*ones(1,size(t,2));


figure()
plot(t,th0(3,:),'r-','linewidth',2)
hold on
plot(t,sf(1,:),'b--','linewidth',2)
hold on
plot(t,sf(2,:),'m-.','linewidth',2)
hold on
plot(t,sf(3,:),'k:','linewidth',2)
hold on
plot(t(1:1000:end),sfA(1:1000:end),'r-s','linewidth',2,'MarkerSize',4)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'Angle, deg'},'Interpreter','latex','FontSize',26);
legend('Sp 0','Sp 1','Sp 2','Sp 3','SFZ3 CA','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([5,100]); % 设置坐标轴范围

% axes('Position',[0.3,0.7,0.28,0.19]); % 生成子图
% t1 = t(1,85/0.02:120/0.02+1);
% sfS = sf(:,85/0.02:120/0.02+1);
% th0S1 = th0(:,85/0.02:120/0.02+1);
% plot(t1,th0S1(2,:),'r-','linewidth',2)
% hold on
% plot(t1,sfS(1,:),'b--','linewidth',2)
% hold on
% plot(t1,sfS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,sfS(3,:),'k:','linewidth',2)
% hold on
% plot(t(1:400:end),sfA(1:400:end),'r-s','linewidth',2,'MarkerSize',4)
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([24.8,28]); % 设置坐标轴范围
%%

figure()
plot(t,th0(4,:),'r-','linewidth',2)
hold on
plot(t,sm(1,:),'b--','linewidth',2)
hold on
plot(t,sm(2,:),'m-.','linewidth',2)
hold on
plot(t,sm(3,:),'k:','linewidth',2)
hold on
plot(t(1:1000:end),smA(1:1000:end),'r-s','linewidth',2,'MarkerSize',4)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'Angle, deg'},'Interpreter','latex','FontSize',26);
legend('Sp 0','Sp 1','Sp 2','Sp 3','SMZ1 CA','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,80]); % 设置坐标轴范围

%%
load theta13.mat

t=theta13(1,:);
theta13=theta13(2:end,:);

theta13A=30*ones(1,size(t,2));


figure()
plot(t,theta13(1,:),'b--','linewidth',2)
hold on
plot(t,theta13(2,:),'m-.','linewidth',2)
hold on
plot(t,theta13(3,:),'k:','linewidth',2)
hold on
plot(t(1:1000:end),theta13A(1:1000:end),'r-s','linewidth',2,'MarkerSize',4)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'Angle, deg'},'Interpreter','latex','FontSize',26);
legend('TE 1','TE 2','TE 3','TE CA','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([0,180]); % 设置坐标轴范围
xticks(0:30:180)
 ylim([25,100]); % 设置坐标轴范围

% axes('Position',[0.3,0.55,0.35,0.16]); % 生成子图
% t1 = t(1,1:5/0.02+1);
% theta13S = theta13(:,1:5/0.02+1);
% plot(t1,theta13S(1,:),'b--','linewidth',2)
% hold on
% plot(t1,theta13S(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,theta13S(3,:),'k:','linewidth',2)
% hold on
% plot(t(1:400:end),theta13A(1:400:end),'r-s','linewidth',2,'MarkerSize',4)
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([27,32]); % 设置坐标轴范围



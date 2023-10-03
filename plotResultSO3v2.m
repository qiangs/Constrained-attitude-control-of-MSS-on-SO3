%% Tracking error, consensus error, angular velocity

load Psi.mat
load PsiDIS.mat
% load PsinoIS.mat

t = Psi(1,:);
Psi = Psi(2:end,:);
PsiDIS = PsiDIS(2:end,:);
% PsinoIS = PsinoIS(2:end,:);

figure()
plot(t,PsiDIS(1,:),'b--','linewidth',2)
hold on
plot(t,Psi(1,:),'r-','linewidth',2)
% hold on
% plot(t,PsinoIS(1,:),'r-.','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'{\(  {\Psi}_{1}  \)}'},'Interpreter','latex','FontSize',26);
legend('SF (6)','DZ (7) with DF (10)','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
% ylim([0,0.6]); % 设置坐标轴范围

axes('Position',[0.31,0.6,0.15,0.25]); % 生成子图
t1 = t(1,5/0.02:5.5/0.02+1);
PsiS = Psi(:,5/0.02:5.5/0.02+1);
PsiDISS = PsiDIS(:,5/0.02:5.5/0.02+1);
% PsinoISS = PsinoIS(:,5/0.02:5.5/0.02+1);
plot(t1,PsiS(1,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(1,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(1,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
%  ylim([0,0.08]); % 设置坐标轴范围

axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
PsiS = Psi(:,150/0.02:end);
PsiDISS = PsiDIS(:,150/0.02:end);
% PsinoISS = PsinoIS(:,150/0.02:end);
plot(t1,PsiS(1,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(1,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(1,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0*10^-3,10*10^-7]); % 设置坐标轴范围
%%

figure()
plot(t,PsiDIS(2,:),'b--','linewidth',2)
hold on
plot(t,Psi(2,:),'r-','linewidth',2)
% hold on
% plot(t,PsinoIS(2,:),'r-.','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'{\(  {\Psi}_{2}  \)}'},'Interpreter','latex','FontSize',26);
legend('SF (6)','DZ (7) with DF (10)','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,2]); % 设置坐标轴范围

axes('Position',[0.31,0.6,0.15,0.25]); % 生成子图
t1 = t(1,3.5/0.02:4/0.02+1);
PsiS = Psi(:,3.5/0.02:4/0.02+1);
PsiDISS = PsiDIS(:,3.5/0.02:4/0.02+1);
% PsinoISS = PsinoIS(:,3.5/0.02:4/0.02+1);
plot(t1,PsiS(2,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(2,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(2,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
%  ylim([0.3,0.46]); % 设置坐标轴范围

axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
PsiS = Psi(:,150/0.02:end);
PsiDISS = PsiDIS(:,150/0.02:end);
% PsinoISS = PsinoIS(:,150/0.02:end);
plot(t1,PsiS(2,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(2,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(2,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0*10^-3,8*10^-8]); % 设置坐标轴范围
%%

figure()
plot(t,PsiDIS(3,:),'b--.','linewidth',2)
hold on
plot(t,Psi(3,:),'r-','linewidth',2)
% hold on
% plot(t,PsinoIS(3,:),'r-.','linewidth',2)
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'{\(  {\Psi}_{3}  \)}'},'Interpreter','latex','FontSize',26);
legend('SF (6)','DZ (7) with DF (10)','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
% ylim([0,1.5]); % 设置坐标轴范围

axes('Position',[0.31,0.6,0.15,0.25]); % 生成子图
t1 = t(1,4.5/0.02:5/0.02+1);
PsiS = Psi(:,4.5/0.02:5/0.02+1);
PsiDISS = PsiDIS(:,4.5/0.02:5/0.02+1);
% PsinoISS = PsinoIS(:,4.5/0.02:5/0.02+1);
plot(t1,PsiS(3,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(3,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(3,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0.7,1.08]); % 设置坐标轴范围

axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
t1 = t(1,150/0.02:end);
PsiS = Psi(:,150/0.02:end);
PsiDISS = PsiDIS(:,150/0.02:end);
% PsinoISS = PsinoIS(:,150/0.02:end);
plot(t1,PsiS(2,:),'r-','linewidth',2)
hold on
plot(t1,PsiDISS(2,:),'b--','linewidth',2)
hold on
% plot(t1,PsinoISS(2,:),'r-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([1.5*10^-8,8*10^-8]); % 设置坐标轴范围



%%
% figure()
% plot(t,Psi(1,:),'b','linewidth',2)
% hold on
% plot(t,Psi(2,:),'m-.','linewidth',2)
% hold on
% plot(t,Psi(3,:),'k:','linewidth',2)
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',28,'Interpreter','latex');
% ylabel({'\boldmath{\(  {\Psi}_{i}  \)}'},'Interpreter','latex','FontSize',28);
% legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
%  ylim([0,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.27,0.65,0.35,0.15]); % 生成子图
% t1 = t(1,60/0.02:80/0.02+1);
% PsiS = Psi(:,60/0.02:80/0.02+1);
% plot(t1,PsiS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsiS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsiS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,1.5*10^-3]); % 设置坐标轴范围
% 
% axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
% t1 = t(1,150/0.02:end);
% PsiS = Psi(:,150/0.02:end);
% plot(t1,PsiS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsiS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsiS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,1.2*10^-6]); % 设置坐标轴范围
% 
% %% 
% 
% figure()
% plot(t,PsiDIS(1,:),'b','linewidth',2)
% hold on
% plot(t,PsiDIS(2,:),'m-.','linewidth',2)
% hold on
% plot(t,PsiDIS(3,:),'k:','linewidth',2)
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',28,'Interpreter','latex');
% ylabel({'\boldmath{\(  {\Psi}^{d}_{i}  \)}'},'Interpreter','latex','FontSize',28);
% legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
% ylim([0,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.27,0.65,0.35,0.15]); % 生成子图
% t1 = t(1,60/0.02:80/0.02+1);
% PsiDISS = PsiDIS(:,60/0.02:80/0.02+1);
% plot(t1,PsiDISS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsiDISS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsiDISS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,1.5*10^-3]); % 设置坐标轴范围
% 
% axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
% t1 = t(1,150/0.02:end);
% PsiDISS = PsiDIS(:,150/0.02:end);
% plot(t1,PsiDISS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsiDISS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsiDISS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,1.1*10^-6]); % 设置坐标轴范围
% %%
% figure()
% plot(t,PsinoIS(1,:),'b','linewidth',2)
% hold on
% plot(t,PsinoIS(2,:),'m-.','linewidth',2)
% hold on
% plot(t,PsinoIS(3,:),'k:','linewidth',2)
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',28,'Interpreter','latex');
% ylabel({['\boldmath{\(  {\Psi}^{n}_{i}  \)}']},'Interpreter','latex','FontSize',28);
% legend('Sp 1','Sp 2','Sp 3','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
% ylim([0,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.27,0.65,0.35,0.15]); % 生成子图
% t1 = t(1,60/0.02:80/0.02+1);
% PsinoISS = PsinoIS(:,60/0.02:80/0.02+1);
% plot(t1,PsinoISS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsinoISS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsinoISS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,1.5*10^-3]); % 设置坐标轴范围
% 
% axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图2
% t1 = t(1,150/0.02:end);
% PsinoISS = PsinoIS(:,150/0.02:end);
% plot(t1,PsinoISS(1,:),'b','linewidth',2)
% hold on
% plot(t1,PsinoISS(2,:),'m-.','linewidth',2)
% hold on
% plot(t1,PsinoISS(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',14); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',14);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',14)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0*10^-3,2*10^-6]); % 设置坐标轴范围

%% input D satruation

load u1DIS.mat
load u2DIS.mat
load u3DIS.mat

t=u1DIS(1,:);
u1DIS=u1DIS(2:end,:);
u2DIS=u2DIS(2:end,:);
u3DIS=u3DIS(2:end,:);




figure()
plot(t,u1DIS(1,:),'b--','linewidth',2);
hold on
plot(t,u1DIS(2,:),'r:','linewidth',2);
hold on
plot(t,u1DIS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  {w}_{1}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  {w}_{1,1}  \)','\(  {w}_{2,1}  \)','\(  {w}_{3,1}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:8/0.02+1);
u1DISS = u1DIS(:,0.02/0.02:8/0.02+1);
plot(t1,u1DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u1DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u1DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:12/0.02+1);
u1DISS = u1DIS(:,0.02/0.02:12/0.02+1);
plot(t1,u1DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u1DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u1DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围
%%
figure()
plot(t,u2DIS(1,:),'b--','linewidth',2);
hold on
plot(t,u2DIS(2,:),'r:','linewidth',2);
hold on
plot(t,u2DIS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  {w}_{2}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  {w}_{1,2}  \)','\(  {w}_{2,2}  \)','\(  {w}_{3,2}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:10/0.02+1);
u2DISS = u2DIS(:,0.02/0.02:10/0.02+1);
plot(t1,u2DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u2DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u2DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:13/0.02+1);
u2DISS = u2DIS(:,0.02/0.02:13/0.02+1);
plot(t1,u2DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u2DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u2DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围

%%
figure()
plot(t,u3DIS(1,:),'b--','linewidth',2);
hold on
plot(t,u3DIS(2,:),'r:','linewidth',2);
hold on
plot(t,u3DIS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
ylabel({'\boldmath{\(  {w}_{3}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
legend('\(  {w}_{1,3}  \)','\(  {w}_{2,3}  \)','\(  {w}_{3,3}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([-1.05,1.05]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:12/0.02+1);
u3DISS = u3DIS(:,0.02/0.02:12/0.02+1);
plot(t1,u3DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u3DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u3DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.01]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:10/0.02+1);
u3DISS = u3DIS(:,0.02/0.02:10/0.02+1);
plot(t1,u3DISS(1,:),'b--','linewidth',2);
hold on
plot(t1,u3DISS(2,:),'r:','linewidth',2);
hold on
plot(t1,u3DISS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.01,-0.9]); % 设置坐标轴范围
%%

% load u1noIS.mat
% load u2noIS.mat
% load u3noIS.mat
% 
% t=u3noIS(1,:);
% u1noIS=u1noIS(2:end,:);
% u2noIS=u2noIS(2:end,:);
% u3noIS=u3noIS(2:end,:);
% 
% figure()
% plot(t,u1noIS(1,:),'b--','linewidth',2);
% hold on
% plot(t,u1noIS(2,:),'r:','linewidth',2);
% hold on
% plot(t,u1noIS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22); %图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
% ylabel({'\boldmath{\(  \bar{w}_{1}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
% legend('\(  \bar{w}_{1,1}  \)','\(  \bar{w}_{2,1}  \)','\(  \bar{w}_{3,1}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
%  ylim([-1.05,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:4/0.02+1);
% u1noISS = u1noIS(:,0.02/0.02:4/0.02+1);
% plot(t1,u1noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u1noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u1noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0.9,1.01]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:2/0.02+1);
% u1noISS = u1noIS(:,0.02/0.02:2/0.02+1);
% plot(t1,u1noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u1noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u1noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([-1.01,-0.9]); % 设置坐标轴范围
% %%
% figure()
% plot(t,u2noIS(1,:),'b--','linewidth',2);
% hold on
% plot(t,u2noIS(2,:),'r:','linewidth',2);
% hold on
% plot(t,u2noIS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22); %图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
% ylabel({'\boldmath{\(  \bar{w}_{2}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
% legend('\(  \bar{w}_{1,2}  \)','\(  \bar{w}_{2,2}  \)','\(  \bar{w}_{3,2}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
% ylim([-1.05,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:6/0.02+1);
% u2noISS = u2noIS(:,0.02/0.02:6/0.02+1);
% plot(t1,u2noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u2noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u2noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0.9,1.01]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:4/0.02+1);
% u2noISS = u2noIS(:,0.02/0.02:4/0.02+1);
% plot(t1,u2noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u2noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u2noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([-1.01,-0.9]); % 设置坐标轴范围
% 
% %%
% figure()
% plot(t,u3noIS(1,:),'b--','linewidth',2);
% hold on
% plot(t,u3noIS(2,:),'r:','linewidth',2);
% hold on
% plot(t,u3noIS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',22); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',22); %图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',22)
% xlabel('\(t\), s','FontSize',26,'Interpreter','latex');
% ylabel({'\boldmath{\(  \bar{w}_{3}  \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',26);
% legend('\(  \bar{w}_{1,3}  \)','\(  \bar{w}_{2,3}  \)','\(  \bar{w}_{3,3}  \)','Interpreter','Latex','FontSize',20,'Location','Best');
% xlim([min(t),max(t)]); % 设置坐标轴范围
%  ylim([-1.05,1.05]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:3/0.02+1);
% u3noISS = u3noIS(:,0.02/0.02:3/0.02+1);
% plot(t1,u3noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u3noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u3noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([0.9,1.01]); % 设置坐标轴范围
% 
% axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
% t1 = t(1,0.02/0.02:8/0.02+1);
% u3noISS = u3noIS(:,0.02/0.02:8/0.02+1);
% plot(t1,u3noISS(1,:),'b--','linewidth',2);
% hold on
% plot(t1,u3noISS(2,:),'r:','linewidth',2);
% hold on
% plot(t1,u3noISS(3,:),'k-.','linewidth',2);
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围
% ylim([-1.01,-0.9]); % 设置坐标轴范围
%%

load EU.mat
load EUDS.mat
% load EUnoS.mat

t=EU(1,:);
EU=EU(2:end,:);
EUDS=EUDS(2:end,:);
% EUnoS=EUnoS(2:end,:);
figure()
plot(t,EUDS(1,:)+EUDS(2,:)+EUDS(3,:),'b--','linewidth',2);
hold on
plot(t,EU(1,:)+EU(2,:)+EU(3,:),'r-','linewidth',2);
hold on
% plot(t,EUnoS(1,:)+EUnoS(2,:)+EUnoS(3,:),'r-.','linewidth',2);
% hold on
set(gca,'FontSize',20); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',20); %图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',20)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\sum\limits_{i = 1}^3 { {\int_0^t {\| \bar{{w}}_i \|dt} } } \)}, N\(\cdot\)m'},'Interpreter','latex','FontSize',24);
legend('SF (6)','DZ (7) with DF (10)','Interpreter','Latex','FontSize',16,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
xticks(0:30:180)
ylim([0,80]); % 设置坐标轴范围

%density function


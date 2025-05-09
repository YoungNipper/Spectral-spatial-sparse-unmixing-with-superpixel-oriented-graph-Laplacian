

figure(1); clf; 
h=plot(101:1:500,res_tv(101:500),'b'); hold on; % k:black
set(h,'LineWidth',2);
h=plot(101:1:500,res_s2w(101:500),'r'); 
set(h,'LineWidth',2);
h=plot(101:1:500,res_drsg(101:500),'g'); 
set(h,'LineWidth',2);
h=plot(101:1:500,res_sb(101:500),'c'); 
set(h,'LineWidth',2);
h=plot(101:1:500,res_ssl(101:500),'m'); 
set(h,'LineWidth',2);

h=xlabel('迭代次数'); set(h,'FontSize',14);
h=ylabel('原始残差'); set(h,'FontSize',14);
set(gca,'FontSize',14);
h=legend({'SUnSAL-TV','S^2WSU','DRSGHU','SBGLSU','SGLapS^3U'},'FontSize',8);

%%
figure(2); clf; 
h=plot(1:1:200,res_tv(1:200),'b'); hold on; % k:black
set(h,'LineWidth',2);
h=plot(1:1:200,res_s2w(1:200),'r'); 
set(h,'LineWidth',2);
h=plot(1:1:200,res_drsg(1:200),'g'); 
set(h,'LineWidth',2);
h=plot(1:1:200,res_sb(1:200),'c'); 
set(h,'LineWidth',2);
h=plot(1:1:200,res_ssl(1:200),'m'); 
set(h,'LineWidth',2);
%

% figure(2); clf; 
% h=plot(res_tv,'b'); hold on; % k:black
% set(h,'LineWidth',2);
% h=plot(res_s2w,'r'); 
% set(h,'LineWidth',2);
% h=plot(res_drsg,'g'); 
% set(h,'LineWidth',2);
% h=plot(res_sb,'c'); 
% set(h,'LineWidth',2);
% h=plot(res_ssl,'m'); 
% set(h,'LineWidth',2);


% figure(1); clf; 
% h=plot(1:1:50,res_s2w(1:50),'b'); hold on; % k:black
% set(h,'LineWidth',2);
% h=plot(1:1:50,res_me(1:50),'r'); 
% set(h,'LineWidth',2);
% h=plot(1:1:50,res_drsg(1:50),'c'); 
% set(h,'LineWidth',2);

h=xlabel('迭代次数'); set(h,'FontSize',14);
h=ylabel('原始残差'); set(h,'FontSize',14);
set(gca,'FontSize',14);
h=legend({'SUnSAL-TV','S^2WSU','DRSGHU','SBGLSU','SGLapS^3U'},'FontSize',8);
% axis([0 Smax 0 1]);

% print -depsc2 Chapter_03_GreedyDemoL2.eps%eps文件，用PS可以打开

%%
figure(3); clf; 
h=plot(sre_tv(1:500),'b'); hold on; % k:black
set(h,'LineWidth',2);
h=plot(sre_s2w(1:500),'r');  hold on;
set(h,'LineWidth',2);
h=plot(sre_drsg(1:500),'g'); 
set(h,'LineWidth',2);
h=plot(sre_sb(1:500),'c'); 
set(h,'LineWidth',2);
h=plot(sre_ssl(1:500),'m'); 
set(h,'LineWidth',2);
h=xlabel('迭代次数'); set(h,'FontSize',14);
h=ylabel('SRE(dB)'); set(h,'FontSize',14);
set(gca,'FontSize',14);
h=legend({'SUnSAL-TV','S^2WSU','DRSGHU','SBGLSU','SGLapS^3U'},'FontSize',8);

% print -depsc2 Chapter_03_GreedyDemoSupp.eps
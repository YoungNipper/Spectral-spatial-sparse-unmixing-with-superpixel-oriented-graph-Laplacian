
% close all;
clear;

% load supp

load Xim.mat 
load X_hat_l1_im.mat 
load X_hat_tv_im.mat 
load X_hat_s2w_im.mat 
load('X_hat_drsg_im.mat')
load('X_hat_s2w_Lap_im.mat')
% load X_hat_l21LC_im.mat 


%%

xx=X_hat_swsp_sup_Lap(supp,:);
 Xim=reshape(xx',75,75,5);

%% 自己写的第一个循环画图程序，输入是 nc*nl*3 的丰度数据

% figure('color',[1 1 1])
% % % [ha, pos] = tight_subplot(1,5,[.025 .025],[.05 .05],[.05 .15]);
% [ha, pos] = tight_subplot(3,4,[0.01, 0.01],[0.025, 0.03],[0.025, 0.025]);%下外边距，上，左右

z1=[1,3,6,9];
for i=1:4
    j=z1(i);
axes(ha(i));
% imagesc(X_hat_drsg_im(:,:,j), [0 1])
imagesc(X_hat_SBGLSU(:,:,j), [0 1])
axis square
% title('Sin(x) Graph')
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar
end

for i2=5:8
    j=z1(i2-4);
axes(ha(i2));
imagesc(X_hat_s2w(:,:,j), [0 1])
axis square
% title('Sin(x) Graph')
colorbar
end

for i3=9:12
    j=z1(i3-8);
axes(ha(i3));
imagesc(X_hat_tv(:,:,j), [0 1])
axis square
% title('Sin(x) Graph')
colorbar
end

% for i4=10:12
% axes(ha(i4));
% imagesc(Xim(:,:,i4-8), [0 1])
% axis square
% colorbar;
% end

% for i5=13:15
% axes(ha(i5));
% imagesc(X_hat_drsg_im(:,:,i5-11), [0 1])
% axis square
% colorbar;
% end
% 
% for i6=16:18
% axes(ha(i6));
% imagesc(X_hat_s2w_Lap_im(:,:,i6-14), [0 1])
% axis square
% colorbar;
% end

colormap jet;








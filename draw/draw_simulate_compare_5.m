% 画丰度对比图（模拟数据）
close all;
clear;


load X_hat_s2w_30db_5.mat
load X_hat_tv_30db_5.mat
load X_hat_SBGLSU_30db_5.mat
% load X_hat_Proposed_30db_5.mat
load X_hat_l21_30db_5.mat
load X_hat_GLCGSU_30db_5.mat


xx=X_hat_s2w(supp,:);
X_hat_s2w_img=reshape(xx',75,75,5);

xx=X_hat_l21(supp,:);
X_hat_l21_img=reshape(xx',75,75,5);

xx=X_hat_SBGLSU(supp,:);
X_hat_SBGLSU_img=reshape(xx',75,75,5);

xx=X_hat_tv(supp,:);
X_hat_tv_img=reshape(xx',75,75,5);

xx=X_hat_sup_cl_Lap(supp,:);
X_hat_GLCGSU_img=reshape(xx',75,75,5);

% xx=X_hat_Proposed(supp,:);
% X_hat_Proposed_img=reshape(xx',75,75,5);
%% 最原始的画图法
figure('Position', [100, 100, 1200, 800]); % [left, bottom, width, height]

% 使用tight_subplot创建包含2行3列的子图，并设置间距和外边距
[ha, pos] = tight_subplot(3,6,[0.00001, 0.002],[0.015, 0.005],[0.35, 0.015]);%下外边距，上，左右
% 第一个数组控制子图之间的距离，第一个参数为上下距离，第二个为左右距离。
     % 后面两个数组控制外边距，分别是下外边距，上，左右

axes(ha(1));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。     
imagesc(Xim(:,:,2), [0 1]) % 原始图像
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

% 在第一个子图中绘制原始图像 Xim(:,:,2)
axes(ha(2));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。
imagesc(X_hat_l21_img(:,:,2), [0 1])     
% imagesc(Xim(:,:,5), [0 1]) % 原始图像
% imagesc(Xim(:,:,2))
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(3));
imagesc(X_hat_tv_img(:,:,2), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(4));
imagesc(X_hat_s2w_img(:,:,2), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(5));
imagesc(X_hat_SBGLSU_img(:,:,2), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(6));
imagesc(X_hat_GLCGSU_img(:,:,2), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
colorbar

% axes(ha(7));
% imagesc(X_hat_Proposed_img(:,:,2), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar

axes(ha(7));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。     
imagesc(Xim(:,:,3), [0 1]) % 原始图像
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

% 在第一个子图中绘制原始图像 Xim(:,:,2)
axes(ha(8));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。
imagesc(X_hat_l21_img(:,:,3), [0 1])     
% imagesc(Xim(:,:,5), [0 1]) % 原始图像
% imagesc(Xim(:,:,2))
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(9));
imagesc(X_hat_tv_img(:,:,3), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(10));
imagesc(X_hat_s2w_img(:,:,3), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(11));
imagesc(X_hat_SBGLSU_img(:,:,3), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(12));
imagesc(X_hat_GLCGSU_img(:,:,3), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
colorbar

% axes(ha(14));
% imagesc(X_hat_Proposed_img(:,:,3), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar

axes(ha(13));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。     
imagesc(Xim(:,:,4), [0 1]) % 原始图像
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

% 在第一个子图中绘制原始图像 Xim(:,:,2)
axes(ha(14));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。
imagesc(X_hat_l21_img(:,:,4), [0 1])     
% imagesc(Xim(:,:,5), [0 1]) % 原始图像
% imagesc(Xim(:,:,2))
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(15));
imagesc(X_hat_tv_img(:,:,4), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(16));
imagesc(X_hat_s2w_img(:,:,4), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(17));
imagesc(X_hat_SBGLSU_img(:,:,4), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(18));
imagesc(X_hat_GLCGSU_img(:,:,4), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
colorbar

% axes(ha(21));
% imagesc(X_hat_Proposed_img(:,:,4), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar


colormap jet




ylabel(ha(1), 'EM2', 'FontSize', 12, 'FontWeight', 'bold');
ylabel(ha(7), 'EM3', 'FontSize', 12, 'FontWeight', 'bold');
ylabel(ha(13), 'EM4', 'FontSize', 12, 'FontWeight', 'bold');

xlabel(ha(13), 'True', 'FontSize', 12, 'FontWeight', 'bold');
xlabel(ha(14), 'CLSUnSAL', 'FontSize', 12, 'FontWeight', 'bold');
xlabel(ha(15), 'SUnSAL-TV', 'FontSize', 12, 'FontWeight', 'bold');
xlabel(ha(16),'S^2WSU',  'FontSize', 12, 'FontWeight', 'bold');
xlabel(ha(17), 'SBGLSU', 'FontSize', 12, 'FontWeight', 'bold');
xlabel(ha(18), 'SLCGDOSU', 'FontSize', 12, 'FontWeight', 'bold');
% xlabel(ha(21), 'ProPosed', 'FontSize', 12, 'FontWeight', 'bold');

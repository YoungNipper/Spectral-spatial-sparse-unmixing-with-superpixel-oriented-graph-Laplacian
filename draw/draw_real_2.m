%%
% close all;
% clear;
% load Y_TV.mat
% load Y_CL.mat
% load Y_s2w.mat
% load Y_SBGLSU.mat
% load Y_sup_cl_Lap.mat
% load Y_s2w_sup_Lap.mat
% load Y_sup_cl_Lap_fog.mat
%%
% xx=X_hat_drsg(supp,:);
 X_hat_tv_im=reshape(X_hat_tv([420,336,297],:)',250,191,3);
 X_hat_s2w_im=reshape(X_hat_s2w([420,336,297],:)',250,191,3);
 X_hat_SBGLSU_im=reshape(X_hat_SBGLSU([420,336,297],:)',250,191,3);
 X_hat_l21_im=reshape(X_hat_l21([420,336,297],:)',250,191,3);
 X_hat_sup_cl_Lap_im = reshape(X_hat_sup_cl_Lap([420,336,297],:)',250,191,3);
%  X_hat_fog_img = reshape(X_hat_sup_cl_Lap_fog([420,336,297],:)',250,191,3);
%  X_hat_s2w_sup_Lap_im = reshape(X_hat_s2w_sup_Lap_im([420,336,297],:)',250,191,3);
%  X_hat_s2w_sup_Lap_im = reshape(X_hat_s2w_sup_Lap{4,1}([420,336,297],:)',250,191,3);
% X_hat_l1_im=reshape(X_hat_SBGLSU{4,1}([420,336,297],:)',250,191,3);
% X_hat_tv_im=reshape(X_hat_SBGLSU{4,2}([420,336,297],:)',250,191,3);
% X_hat_s2w_im=reshape(X_hat_SBGLSU{4,3}([420,336,297],:)',250,191,3);
% X_hat_drsg_im=reshape(X_hat_SBGLSU{4,4}([420,336,297],:)',250,191,3);
% X_hat_s2w_lap_im=reshape(X_hat_drsg{1,5}([420,336,297],:)',250,191,3);
% %%  3 ×  6
% figure(3)
% % [ha, pos] = tight_subplot(3,3,[.025 .025],[.05 .05],[.05 .15]);
% [ha, pos] = tight_subplot(6,3,[0.03, 0.01],[0.025, 0.005],[0.05, 0.15]);%下外边距，上，左右
% %第一个数组控制子图之间的距离，第一个为上下，第二个为左右
% %
% for i=1:3
% axes(ha(i));
% imagesc(X_hat_l21_im(:,:,i))
% 
% axis image
% % set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
% colorbar
% end
% 
% for i2=4:6
% axes(ha(i2));
% imagesc(X_hat_tv_im(:,:,i2-3))
% axis image
% colorbar
% end
% 
% for i3=7:9
% axes(ha(i3));
% imagesc(X_hat_s2w_im(:,:,i3-6))
% axis image
% colorbar
% end
% 
% for i4=10:12
% axes(ha(i4));
% imagesc(X_hat_SBGLSU_im(:,:,i4-9))
% axis image
% colorbar
% end
% 
% 
% for i5=13:15
% axes(ha(i5));
% imagesc(X_hat_s2w_sup_lap_im(:,:,i5-12))
% axis image
% colorbar
% end
% 
% for i6=16:18
% axes(ha(i6));
% imagesc(X_hat_sup_cl_Lap_im(:,:,i6-15))
% axis image
% colorbar
% end
% 
%  colormap jet

%%  5 × 3
figure(3)
[ha, pos] = tight_subplot(3,5,[0.03, 0.01],[0.025, 0.005],[0.05, 0.15]);%下外边距，上，左右
%
axes(ha(1))
imagesc(X_hat_l21_im(:,:,1))
axis image
colorbar
axes(ha(2))
imagesc(X_hat_tv_im(:,:,1))
axis image
colorbar
axes(ha(3))
imagesc(X_hat_s2w_im(:,:,1))
axis image
colorbar
axes(ha(4))
imagesc(X_hat_SBGLSU_im(:,:,1))
axis image
colorbar
axes(ha(5))
imagesc(X_hat_sup_cl_Lap_im(:,:,1))
axis image
colorbar

axes(ha(6))
imagesc(X_hat_l21_im(:,:,2))
axis image
colorbar
axes(ha(7))
imagesc(X_hat_tv_im(:,:,2))
axis image
colorbar
axes(ha(8))
imagesc(X_hat_s2w_im(:,:,2))
axis image
colorbar
axes(ha(9))
imagesc(X_hat_SBGLSU_im(:,:,2))
axis image
colorbar
axes(ha(10))
imagesc(X_hat_sup_cl_Lap_im(:,:,2))
axis image
colorbar

axes(ha(11))
imagesc(X_hat_l21_im(:,:,3))
axis image
colorbar
axes(ha(12))
imagesc(X_hat_tv_im(:,:,3))
axis image
colorbar
axes(ha(13))
imagesc(X_hat_s2w_im(:,:,3))
axis image
colorbar
axes(ha(14))
imagesc(X_hat_SBGLSU_im(:,:,3))
axis image
colorbar
axes(ha(15))
imagesc(X_hat_sup_cl_Lap_im(:,:,3))
axis image
colorbar




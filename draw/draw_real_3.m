%%为论文里的配图所用
% close all;
% clear;
load Y_TV.mat
load Y_CL.mat
load Y_s2w.mat
load Y_SBGLSU.mat
load Y_sup_cl_Lap.mat
load Y_s2w_sup_Lap.mat
%%
% xx=X_hat_drsg(supp,:);
 X_hat_tv_im=reshape(X_hat_tv([420,336,297],:)',250,191,3);
 X_hat_s2w_im=reshape(X_hat_s2w([420,336,297],:)',250,191,3);
 X_hat_SBGLSU_im=reshape(X_hat_SBGLSU([420,336,297],:)',250,191,3);
 X_hat_l21_im=reshape(X_hat_l21([420,336,297],:)',250,191,3);
 X_hat_sup_cl_Lap_im = reshape(X_hat_sup_cl_Lap([420,336,297],:)',250,191,3);

%%   Alunite
figure(1)   
[ha, pos] = tight_subplot(6,1,[0.03, 0.01],[0.025, 0.005],[0.05, 0.15]);%下外边距，上，左右

axes(ha(1));
imagesc(X_hat_l21_im(:,:,1))
axis image
colorbar


axes(ha(2));
imagesc(X_hat_tv_im(:,:,1))
axis image
colorbar


axes(ha(3));
imagesc(X_hat_s2w_im(:,:,1))
axis image
colorbar


axes(ha(4));
imagesc(X_hat_SBGLSU_im(:,:,1))
axis image
colorbar


axes(ha(5));
imagesc(X_hat_s2w_sup_lap_im(:,:,1))
axis image
colorbar


axes(ha(6));
imagesc(X_hat_sup_cl_Lap_im(:,:,1))
axis image
colorbar
colormap jet

%%   Buddingtonite
figure(2)   
[ha, pos] = tight_subplot(6,1,[0.03, 0.01],[0.025, 0.005],[0.05, 0.15]);%下外边距，上，左右

axes(ha(1));
imagesc(X_hat_l21_im(:,:,2))
axis image
colorbar


axes(ha(2));
imagesc(X_hat_tv_im(:,:,2))
axis image
colorbar


axes(ha(3));
imagesc(X_hat_s2w_im(:,:,2))
axis image
colorbar


axes(ha(4));
imagesc(X_hat_SBGLSU_im(:,:,2))
axis image
colorbar


axes(ha(5));
imagesc(X_hat_s2w_sup_lap_im(:,:,2))
axis image
colorbar


axes(ha(6));
imagesc(X_hat_sup_cl_Lap_im(:,:,2))
axis image
colorbar
colormap jet

%%   Chalcedony
figure(3)   
[ha, pos] = tight_subplot(6,1,[0.03, 0.01],[0.025, 0.005],[0.05, 0.15]);%下外边距，上，左右

axes(ha(1));
imagesc(X_hat_l21_im(:,:,3))
axis image
colorbar


axes(ha(2));
imagesc(X_hat_tv_im(:,:,3))
axis image
colorbar


axes(ha(3));
imagesc(X_hat_s2w_im(:,:,3))
axis image
colorbar


axes(ha(4));
imagesc(X_hat_SBGLSU_im(:,:,3))
axis image
colorbar


axes(ha(5));
imagesc(X_hat_s2w_sup_lap_im(:,:,3))
axis image
colorbar


axes(ha(6));
imagesc(X_hat_sup_cl_Lap_im(:,:,3))
axis image
colorbar
colormap jet











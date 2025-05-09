%%
% close all;
% clear;

% load Z_SUNSAL.mat 
% load Z_TV.mat 
% load X_hat_s2w
% load X_hat_drsg
% load X_hat_s2w_Lap1
% load X_hat_tv_im.mat 
%%

% X_hat_s2w_im=reshape(X_hat_s2w([420,336,297],:)',250,191,3);
% X_hat_drsg_im=reshape(X_hat_s2w{2,1}([420,336,297],:)',250,191,3);
% X_hat_s2w_lap_im=reshape(X_hat_s2w{3,1}([420,336,297],:)',250,191,3);

X_hat_sbglsu_im=reshape(X_hat_s2w_Lap{1,2}([420,336,297],:)',250,191,3);
% X_hat_l1_im=reshape(X_hat_s2w_sup_Lap{2,2}([420,336,297],:)',250,191,3);
% X_hat_tv_im=reshape(X_hat_s2w_sup_Lap{1,2}([420,336,297],:)',250,191,3);
% X_hat_s2w_im=reshape(X_hat_s2w_sup_Lap{1,3}([420,336,297],:)',250,191,3);
% X_hat_drsg_im=reshape(X_hat_s2w_sup_Lap{1,4}([420,336,297],:)',250,191,3);
% X_hat_s2w_lap_im=reshape(X_hat_drsg{1,5}([420,336,297],:)',250,191,3);
%
figure
% [ha, pos] = tight_subplot(1,5,[.025 .025],[.05 .05],[.05 .15]);
[ha, pos] = tight_subplot(1,3,[0.05, 0.01],[0.025, 0.005],[0.03, 0.03]);%下外边距，上，左右

for i=1:3
axes(ha(i));
% imagesc(X_hat_tv_im(:,:,i))
imagesc(X_hat_sbglsu_im(:,:,i))
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar
end

% for i2=4:6
% axes(ha(i2));
% % imagesc(X_hat_s2w_im(:,:,i2-3))
% imagesc(X_hat_s2w_sup_lap_im(:,:,i2-3))
% axis image
% colorbar
% end
% % 
% for i3=7:9
% axes(ha(i3));
% imagesc(X_hat_drsg_im(:,:,i3-6))
% axis image
% colorbar
% end
% 
% for i4=10:12
% axes(ha(i4));
% imagesc(X_hat_sbglsu_im(:,:,i4-9))
% axis image
% colorbar;
% end
% % 
% for i5=13:15
% axes(ha(i5));
% imagesc(X_hat_s2w_sup_lap_im(:,:,i5-12))
% axis image
% colorbar;
% end

% for i6=16:18
% axes(ha(i6));
% imagesc(X_hat_s2w_sup_lap_im(:,:,i6-15))
% axis image
% colorbar;
% end


colormap jet;








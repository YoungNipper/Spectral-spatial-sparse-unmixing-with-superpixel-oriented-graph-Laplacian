
%%   个人觉得和draw_real相似
% close all;
% clear;

load X_hat_s2w_30db.mat
load X_hat_tv_30db.mat
load X_hat_SBGLSU_30db.mat
load X_hat_Proposed_30db.mat
load X_hat_l21_30db.mat
load X_hat_FoGTF_30db.mat

%% 前面的画图是每一行代表一个算法的结果，这里是每一列代表一个算法的结果.总过六列
%
% xx=X_hat_drsg(supp,:);
% Xim=reshape(xx',75,75,5);

X_hat_s2w_im=reshape(X_hat_s2w([420,336,297],:)',250,191,3);
X_hat_tv_im=reshape(X_hat_tv{2,1}([420,336,297],:)',250,191,3);
X_hat_SBGLSU_im=reshape(X_hat_SBGLSU{3,1}([420,336,297],:)',250,191,3);
X_hat_l21_im=reshape(X_hat_l21{4,1}([420,336,297],:)',250,191,3);
X_hat_Proposed_im=reshape(X_hat_Proposed{5,1}([420,336,297],:)',250,191,3);
X_hat_FoGTF_im=reshape(X_hat_FoGTF{6,1}([420,336,297],:)',250,191,3);

figure
% [ha, pos] = tight_subplot(1,5,[.025 .025],[.05 .05],[.05 .15]);
[ha, pos] = tight_subplot(3,7,[0.02, 0.01],[0.025, 0.005],[0.03, 0.03]);%下外边距，上，左右
  j=1;
for i=2:4
axes(ha(j));
imagesc(Xim(:,:,i), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar
j=j+6;
end

j2=2;
for i=2:4
axes(ha(j2));
imagesc(X_hat_l21_im(:,:,i), [0 1])
axis image
colorbar
j2=j2+6;
end

j3=3;
for i=2:4
axes(ha(j3));
imagesc(X_hat_tv_im(:,:,i), [0 1])
axis image
colorbar
j3=j3+6;
end

j4=4;
for i=2:4
axes(ha(j4));
imagesc(X_hat_s2w_im(:,:,i), [0 1])
axis image
colorbar;
j4=j4+6;
end


j5=5;
for i=2:4
axes(ha(j5));
imagesc(X_hat_SBGLSU_im(:,:,i), [0 1])
axis image
colorbar;
j5=j5+6;
end


j6=6;
for i=2:4
axes(ha(j6));
imagesc(X_hat_FoGTF_im(:,:,i), [0 1])
axis image
colorbar;
j6=j6+6;
end

j7=7;
for i=2:4
axes(ha(j7));
imagesc(X_hat_Proposed_im(:,:,i), [0 1])
axis image
colorbar;
j7=j7+7;
end

colormap jet;








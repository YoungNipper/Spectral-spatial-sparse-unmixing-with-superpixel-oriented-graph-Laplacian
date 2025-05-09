U=X_hat_lap_swsp;
% U=X_hat_fcls;
% U=X_hat_tv;
% U=X_hat_LR_tv;
% U=X_hat_LR_Lap;
% U=X_hat_swsp_Lap;
% U=X_hat_l1;
% U=X_hat_sunsal_Lap;
temp=sqrt(sum(U.^2,2));
[num ,id]=sort(temp,'descend');



% u=reshape(U(id(10),:)',60,60);
% figure;
% imagesc(u)
% colorbar;
% colormap jet;


 
 %%
 


X1=X_hat_tv;
X2=X_hat_s2w;
X3=X_hat_drsg;
X4=X_hat_SBGLSU;
X5=X_hat_s2w_sup_Lap;
 
X_hat_tv_im=reshape(X1(supp,:)',75,75,5);
X_hat_tv_im=X_hat_tv_im(:,:,2:4);

X_hat_s2w_im=reshape(X2(supp,:)',75,75,5);
X_hat_s2w_im=X_hat_s2w_im(:,:,2:4);

X_hat_drsg_im=reshape(X3(supp,:)',75,75,5);
X_hat_drsg_im=X_hat_drsg_im(:,:,2:4);

X_hat_sbglsu_im=reshape(X4(supp,:)',75,75,5);
X_hat_sbglsu_im=X_hat_sbglsu_im(:,:,2:4);

X_hat_s2w_sup_lap_im=reshape(X5(supp,:)',75,75,5);
X_hat_s2w_sup_lap_im=X_hat_s2w_sup_lap_im(:,:,2:4);
%%


X1=X_hat_tv;
X2=X_hat_s2w;
X3=X_hat_drsg;
X4=X_hat_SBGLSU;
X5=X_hat_s2w_sup_Lap;

X_hat_tv_im=reshape(X1(supp,:)',100,100,9);
% X_hat_tv_im=X_hat_tv_im(:,:,[1,2,4]);

X_hat_s2w_im=reshape(X2(supp,:)',100,100,9);
% X_hat_s2w_im=X_hat_s2w_im(:,:,[1,2,4]);

X_hat_drsg_im=reshape(X3(supp,:)',100,100,9);
% X_hat_drsg_im=X_hat_drsg_im(:,:,[1,2,4]);

X_hat_sbglsu_im=reshape(X4(supp,:)',100,100,9);
% X_hat_sbglsu_im=X_hat_sbglsu_im(:,:,[1,2,4]);

X_hat_s2w_sup_lap_im=reshape(X5(supp,:)',100,100,9);
% X_hat_s2w_sup_lap_im=X_hat_s2w_sup_lap_im(:,:,[1,2,4]);
 
 
 
 
function [Group,IDX]=seg(Y,num_sup,im_size)
% Extract features : SVD
% apply SVD on img_noisy, then use first p components to compute similarity between two patches.

line = im_size(1);
c = im_size(2);
N = line*c;
p   = 3;  
[U_ss,D]=svd(Y,'econ');
U_ss(:,p+1:end) = [];                         % remain first p component
Y_feature =U_ss'*Y;                           % truncated SVD-->降维在使用matlab中的superpixels方法
                                              % 因为matlab中的该方法只能是二维和三维的（师兄说的）
img_feature = reshape(Y_feature', line, c, p);
[L, num] = superpixels(img_feature,num_sup,'Compactness',10);
IDX = reshape(L,N,1);

im_idx=reshape(1:N,line,c)';         %师兄在这里转置？没有必要。这里不能转置
Group=cell(num, 1);
for i = 1:line
    for j = 1:c
        Group{L(i,j),1}(end+1)=im_idx(i,j);
    end
end
% save temp5   此处用来画超像素分割之后的图
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addpath 'E:\vlfeat-0.9.21\toolbox'
% run('E:\vlfeat-0.9.21\toolbox\vl_setup')
% Y2 = reshape(Y', 75, 75, 224);  
% 
% % compute superpixels using vl_slic
% disp('Computing SLIC Superpixels...');
% slic_size=5;
% slic_reg=0.001;
% yyy=single(Y2);
% 
% L = vl_slic(single(Y2), slic_size, slic_reg);
% L = L+1;
% num = double(max(L(:))); 
% 
% spSegs=L;
% img_feature=Y2(:,:,[29, 99,168]);
% 
% [sx,sy] = vl_grad(double(spSegs), 'type', 'forward') ;
% s = find(sx | sy) ;
% imgColor = img_feature;
% imgColor = uint8(255*(imgColor - min(imgColor(:)))./(max(imgColor(:))-min(imgColor(:))));
% imshow(imgColor);
% 
% imgS = imgColor; 
% imgS([s s+numel(imgColor(:,:,1)) s+2*numel(imgColor(:,:,1))]) = 0;
% figure; imshow(imgS);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% BW = boundarymask(L);
% 
% d=mat2gray(img_feature);
% imshow(d);
% imshow(imoverlay(d,BW,'cyan'),'InitialMagnification',67);



end
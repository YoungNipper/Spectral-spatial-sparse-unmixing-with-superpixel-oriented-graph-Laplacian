%  在SBGLSU中定位到超像素分割部分seg做节点，然后在darw里面load，然后画图
%超像素分割的图像
addpath 'vlfeat-0.9.21\toolbox'
run('vlfeat-0.9.21\toolbox\vl_setup')
% load data4_seg;
load data5_seg;
% Y2=reshape(Y',100,100,224);
% slic_size=11;
% slic_reg=0.0025;
% L = vl_slic(single(Y2), slic_size, slic_reg);
% L = L+1;
% num = double(max(L(:))); 

%    L:得到的超像素索引矩阵图（75×75,100×100）。Y:高光谱图像
spSegs= L;

Y2=reshape(Y',75,75,224);
% Y2=reshape(Y',100,100,224);
% Y2=reshape(Y',250,191,188);

img_feature=Y2(:,:,[12, 72,122]);
% img_feature=Y2(:,:,[29, 99,168]);
imgColor = img_feature;
imgColor = uint8(255*(imgColor - min(imgColor(:)))./(max(imgColor(:))-min(imgColor(:))));
figure; imshow(imgColor);


[sx,sy] = vl_grad(double(spSegs), 'type', 'forward') ;
s = find(sx | sy) ;%逻辑运算符，这里必须是|。因为是向量、矩阵。||与&&只能是标量。
imgS = imgColor; 
imgS([s s+numel(imgColor(:,:,1)) s+2*numel(imgColor(:,:,1))]) = 0;
figure; imshow(imgS);


%%

% clear;clc;
% load temp
% 
% imgColor = img_feature;
% imgColor = uint8(255*(imgColor - min(imgColor(:)))./(max(imgColor(:))-min(imgColor(:))));
% BW = boundarymask(L,4);
% 
% imshow(labeloverlay(imgColor,BW,'Transparency',0))
% imshow(imoverlay(imgColor,BW,'red'));




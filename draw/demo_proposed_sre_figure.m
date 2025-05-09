%% 
% function demo_sup_GTF
clear; clc;
    

%% 选择模拟数据集的SNR     DC1--data5(75)      DC2--data2(100)

load data5_30db.mat

                 
% 调参
% lambda1 = [1e-6,1e-5,5e-5,1e-4,5e-4,1e-3,5e-3,5e-2,1e-2];   DC2
lambda1 = [1e-4,5e-4,1e-3,5e-3,5e-2,1e-2];    % DC1
lambda2 = [1e-6,1e-5,5e-5,1e-4,1e-3,1e-2];

% lambda1 = 0.05;  
% lambda2 = 0.00001;
a = length(lambda1);
b = length(lambda2);  

%% 超像素参数设置

% DC1 30db
paramsRTV.sigma = 1.2;
paramsRTV.sharpness = 0.001;
paramsRTV.maxIter = 5;
paramsRTV.fuseBins = 5;
featureNums = 70; 
paramsRTV.lambda = 0.001;
parameter.AL_iters1=400;     % 每次先较小迭代次数运行，节约时间
parameter.AL_iters2=10;
parameter.mu = 0.01;      %惩罚参数
parameter.im_size=[75,75]; % 模拟数据像素大小  DC1为75*75   DC2为100*100

% DC2 30db
% paramsRTV.lambda = 0.0001;
% parameter.AL_iters1=40;     % 每次先较小迭代次数运行，节约时间
% parameter.AL_iters2=5;
% parameter.mu = 0.005;
% parameter.im_size=[100,100]; % 模拟数据像素大小  DC1为75*75   DC2为100*100
% paramsRTV.sigma = 0.5;
% paramsRTV.sharpness = 0.02;
% paramsRTV.maxIter = 5;
% paramsRTV.fuseBins = 5;
% featureNums = 1500; 

parameter.trueX=XT;        
parameter.num_sup=100;        % 超像素分割大小，同样可调

%% sup_GTF method
Yimg = reshape(Y', nl, nc, L);   
Xtrue = XT;  
% band, endmember and pixel numbers
n_endmembers=size(A,2);                    
[n_row,n_col,n_bands]=size(Yimg);
XtruethImg = reshape(Xtrue', n_row,n_col, n_endmembers); 
Y_input =  reshape(Yimg,n_row*n_col,n_bands)';

% calculate first-order graph difference operator          计算一阶图差算子（fogdo函数）
Ya = average_fusion(Yimg, paramsRTV.fuseBins);     
[no_lines,no_rows,no_bands] = size(Ya);
fimg=reshape(Ya,[no_lines*no_rows no_bands]);
[fimg] = scale_new(fimg);
fimg=reshape(fimg,[no_lines no_rows no_bands]);     

k = 1;
for i=1:a
    for j=1:b
        tic
        lambda_1 =  lambda1(i); 
        lambda_2 =  lambda2(j); 
        [Dh,Dv] = fogdo(fimg,paramsRTV.lambda,paramsRTV.sigma, paramsRTV.sharpness, paramsRTV.maxIter);
        [Xout] = sup_la_cl_GTF(A,Y_input,Dh,Dv,lambda_1,lambda_2,featureNums,parameter);
        toc
        SREv_30db_DC1(i,j) = 20*log10(norm(Xtrue,'fro')/norm(Xout - Xtrue,'fro'));
%         SREv_30db_DC2(i,j)= 20*log10(norm(Xtrue,'fro')/norm(Xout - Xtrue,'fro'));
        disp(k);
        fprintf(' lambda1 = %f , lambda2 = %f  ,SRE = %f\n  ',lambda_1, lambda_2,SREv_30db_DC1(i,j));

        k = k+1;
    end
end










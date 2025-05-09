%% 光谱空间加权+超像素图正则化
%%%%%%%%%%%%%%%%%%%%%%
% demo_s2w_sup_lap
%%%%%%%%%%%%%%%%%%%%%%




        load data5_30db;


    
k=1;
% z=[300,400,450,500];
% z=[0.005, 0.5, 1];
% z=[0.5, 0.7, 0.9, 1.1];
% z=[80, 90, 100, 110];
% z=[6,10,12];



options.NeighborMode = 'KNN';
options.t =1;%这里调节权值的大小。可调参数2，相似度度量大小。
options.k =4;% k=0,全连接图 。可c调参数1，近邻的个数


parameter.AL_iters1=90;
parameter.AL_iters2=5; 
parameter.mu = 0.05;
parameter.trueX=XT;
parameter.im_size=[75,75];
parameter.num_sup=100;%这里取350，400



lambda_l1_ =  [5e-5 ];%稀疏约束
lambda_lap_ = [25];% lap约束
% lambda_l1_=[0.01];
% lambda_lap_ =[ 1e-3];
a=length(lambda_l1_);
b=length(lambda_lap_);


SRE_swsp_sup_Lap30=zeros(a,b);


% k=1;
for i=1:a
    for j=1:b
        tic
        lambda_l1 =  lambda_l1_(i); 
        lambda_lap =  lambda_lap_(j); 
        X_hat_swsp_sup_Lap = s2w_sup_lap(Y,A, parameter,options,lambda_l1,lambda_lap);
        toc
        
        disp(k)
        k=k+1;

         SRE_swsp_sup_Lap30(i ,j)=20*log10(norm(XT,'fro')/norm(X_hat_swsp_sup_Lap-XT,'fro'));
          disp(SRE_swsp_sup_Lap30(i ,j))


        
    end
end

%save swsp_sup_Lap20 

% if my_name==1
%     save swsp_sup_Lap20 lambda_l1_ lambda_lap_ SRE_swsp_sup_Lap20   
% elseif my_name==2
%     save swsp_sup_Lap30 lambda_l1_ lambda_lap_ SRE_swsp_sup_Lap30   
% else
%     save swsp_sup_Lap40 lambda_l1_ lambda_lap_ SRE_swsp_sup_Lap40   
% end

function [U,res_ssl,sre_ssl,iter]= s2w_sup_lap(Y,A,parameter,options,lambda_l1,lambda_lap)


% if isfield(parameter, 'epsilon')
%     epsilon = parameter.epsilon;
% else
%     epsilon = 1e-5;
% end

if isfield(parameter, 'mu')
    mu = parameter.mu;
end

if isfield(parameter, 'im_size')
    im_size = parameter.im_size;
end

if isfield(parameter, 'num_sup')
    num_sup = parameter.num_sup;
end

if isfield(parameter,'AL_iters1')
    AL_iters1=parameter.AL_iters1;
end

if isfield(parameter,'AL_iters2')
    AL_iters2=parameter.AL_iters2;
end

% if isfield(parameter, 'trueX')
%     XT = parameter.trueX;
% end


%%

[LA,m] = size(A);
% data set size
[L,N] = size(Y);
if (LA ~= L)
    error('mixing matrix M and data set y are inconsistent');
end



Finv = (A'*A + 3*eye(m))^-1;
U = Finv*A'*Y;

%Initialization of auxiliary matrices V1,V2,V3,V4
V1 = A*U; 
V2 = U;
V3 = U;
V4 = U;
   
%Initialization of Lagranfe Multipliers
D1 = V1*0;
D2 = V2*0;
D3 = V3*0;
D4 = V4*0;




%超像素分割
group=seg(Y,num_sup,im_size);%
num=size(group,1);
%每个超像素构造图拉普拉斯矩阵

Aff_sub = cell(num,1);
Aff =cell(num,1);
LrhoI = cell(num,1);
for ii=1:num
    i_sub=size(group{ii},2);
    Y2=Y(:,group{ii});
    Aff_sub{ii}=constructW(Y2',options);
    
    %是不是应该考虑将一些小值设置为0？
    
%     Aff_sub{ii}(Aff_sub{ii}<0.2)=0;
   
    Aff{ii}=full( Aff_sub{ii});
    DCol = full(sum(Aff_sub{ii},2));
    D = spdiags(DCol,0,i_sub,i_sub);
    L1 = D  - Aff_sub{ii};
    Lap = sparse(L1);
    LrhoI{ii} = (2*lambda_lap*Lap +mu*speye(i_sub));     
    
end
clear ii;


res_ssl=[];
sre_ssl=[];
iter=0;

%---------------------------------------------
%  ADMM iterations
%---------------------------------------------
res = inf;
nr=im_size(1);
nc=im_size(2);
tol1 = sqrt(N)*1e-5;
i = 1;
k=1;

while (k <= AL_iters1)
    
    NU = U-D2;
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
NU1 = zeros(m,nc*nr);
X2=reshape((NU)',nc,nr,m);

for i_p = 1:m
    image_temp = zeros(nc+2,nr+2);%矩阵边缘部分补全为0
    NU_temp = image_temp;
    image_temp(2:end-1,2:end-1) = X2(:,:,i_p);
    for i1 = 2:nc+1
        for j1 = 2:nr+1
            NU_temp(i1,j1) = ((1/sqrt(2))*image_temp(i1-1,j1-1) + image_temp(i1-1,j1) + (1/sqrt(2))*image_temp(i1-1,j1+1)+...
                image_temp(i1,j1-1) + image_temp(i1,j1+1)+...
                (1/sqrt(2))*image_temp(i1+1,j1-1) + image_temp(i1+1,j1) + (1/sqrt(2))*image_temp(i1+1,j1+1))/(4*(1/sqrt(2))+4);
          
        end
    end   
    NU_p = NU_temp(2:end-1,2:end-1);
    NU1(i_p,:) = NU_p(:);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NU1=(NU*B)./NU_temp;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%没有空间信息的稀疏加权
% w1=1./(0.01+abs(NU));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w1=1./(0.01+abs(NU1));

NU2 = sqrt(sum((NU).^2,2));
b=1./NU2;
w2=repmat(b,1,size(U,2));
w=w2.*w1;

% while (i <= AL_iters2) && (sum(abs(res)) > tol1)
while (i <= AL_iters2) && (sum(abs(res)) >0)
    % solve the quadratic step (all terms depending on U)
    
    U = Finv*(A'*(V1 + D1) + (V2 + D2)+ (V3 +D3) + (V4 + D4) );
    %  data term (V1)
    V1 = 1/(1+mu)*(Y + mu*(A*U - D1));
    %  superpixel (V2)
    
    V2 = soft(U-D2,lambda_l1/mu.*w);
    

    %  superpixel (V3)
    % 循环，图的拉普拉斯循环    
    for iii=1:num % loop for each cluster 
        V3(:,group{iii}) = mu*(U(:,group{iii})-D3(:,group{iii}))/LrhoI{iii};
    end
    clear iii;

    % positivity(V4)
    V4 = max(U - D4, 0);
  
    %update D
    D1 = D1 - A*U + V1;
    D2 = D2 - U + V2;
    D3 = D3 - U + V3;
    D4 = D4 - U + V4;
    
%      res1 = norm((A*U-V1),'fro');
%     res2 = norm((U-V2)  +(U-V3) + (U-V4),'fro');
%     res = res1+res2;
%     
%     res_ssl=[res_ssl,res];
%     sre_ssl=[sre_ssl,20*log10(norm(XT,'fro')/norm(U-XT,'fro'))];
    
iter=iter+1;
    i = i + 1;
end


    %% res
    
   
    
    
%     rmse= norm(U-XT,'fro');
   
%     if mod(k,5) == 1
%         st=[];
%         st = strcat(st,sprintf(' res1 = %2.6f, res2 = %2.6f, rmse = %2.6f',res1,res2,rmse));
%         fprintf(strcat(sprintf('iter = %d -',k),st,'\n'));
%     end
    

i=1;
k=k+1;  
end    

end







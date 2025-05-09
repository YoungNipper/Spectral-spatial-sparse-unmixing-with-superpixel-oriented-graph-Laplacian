% draw simulate data 1
% 创建一个包含5个子图的图形
% 创建一个白色背景的图形
figure('color', [1 1 1]);

% 调用tight_subplot函数创建紧凑的子图
h = tight_subplot(2, 3, 0.05, 0.1, 0.1);

for i = 1:5
    % 选择当前子图
%     subplot(1, 5, i)
     axes(h(i));
    % 在每个子图中显示图像
    imagesc(Xim(:,:,i), [0 1])
    % 设置坐标轴为正方形
    axis square
    % 在子图上方添加标题
    title(['EM' num2str(i)])
    % 获取当前坐标轴的句柄
    ax = gca;
    % 设置坐标轴字体大小
    set(ax, 'FontSize', 12); % 你可以根据需要调整字体大小
    colorbar;
end
% 光谱曲线
axes(h(6));
for j=1:5
    i=supp(j);
    
%     plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(i)])
    plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(j)])
    hold on 
    
end
hold off 
legend
xlabel('The number of bands')
ylabel('Reflectances')
title(['Spectral curve'])
axis square
% 获取最后一个子图的原始位置
originalSize2 = get(gca, 'Position');
% 设置坐标轴的字体大小和字体名称
set(gca, 'FontSize', 16, 'FontName', 'Times New Roman');
% 设置色图为 'jet'
colormap jet

%% draw simulate data 2
% 创建一个白色背景的图形
figure('color', [1 1 1]);

% 调用tight_subplot函数创建紧凑的子图
h = tight_subplot(5, 2, 0.05, 0.1, 0.1);

for i = 1:9
    % 选择当前子图
    axes(h(i));
    
    % 在每个子图中显示图像
    imagesc(Xim(:,:,i), [0 1])
    
    % 设置坐标轴为正方形
    axis square
    
    % 如果需要，你可以在每个子图上方添加标题
    title(['EM' num2str(i)])
    
    % 获取当前坐标轴的句柄
    ax = gca;
    
    % 设置坐标轴字体大小
    set(ax, 'FontSize', 12); % 你可以根据需要调整字体大小
    
    % 添加颜色条
    colorbar;
end

% % % 光谱曲线
% axes(h(10));
% for j=1:9
%     i=supp(j);
%     
%     plot(A(:,i),'LineWidth',0.1,'DisplayName',['Endmember #' num2str(j)])
%     hold on 
% end
% hold off 
% legend
% xlabel('The number of bands')
% ylabel('Reflectances')
% title(['Spectral curve'])
% axis square
% 获取最后一个子图的原始位置
originalSize2 = get(gca, 'Position');
% 设置坐标轴的字体大小和字体名称
set(gca, 'FontSize', 12, 'FontName', 'Times New Roman');
% 设置色图为 'jet'
colormap jet



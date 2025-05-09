figure;

% 定义数据矩阵 Z
Z = SREv_30db_DC1(2:6, 1:5);
% Z = SREv_30db_DC2(2:6, 1:5);
% 创建三维表面图
surfc(Z);

% 添加色标并设置颜色映射
colorbar;
colormap jet;

% 自定义图形的外观
ax = gca;
ax.LineWidth = 2;
% 添加 x 轴和 y 轴的标签
xlabel('λ_1');
ylabel('λ_2');
zlabel('SRE');

% 设置 x 轴和 y 轴的刻度范围和标签
xticks(1:6);  % 设置 x 轴刻度为 1 到 6
yticks(1:6);
xticklabels({'1e-4', '5e-4', '1e-3', '5e-3', '5e-2', '1e-2'});  % 设置 x 轴刻度标签
yticklabels({'1e-6', '1e-5', '5e-5', '1e-4', '1e-3', '1e-2'});
%% 俩个一起画
% 调用tight_subplot函数创建紧凑的子图
h = tight_subplot(1, 2, 0.05, 0.1, 0.1);
axes(h(1));
load SREv(GLCGDO)_30db_DC1.mat;
% 定义数据矩阵 Z
Z = SREv_30db_DC1(2:6, 1:5);
% Z = SREv_30db_DC2(2:6, 1:5);
% 创建三维表面图
surfc(Z);

% 添加色标并设置颜色映射
colorbar;
colormap jet;

% 自定义图形的外观
ax = gca;
ax.LineWidth = 2;
% 添加 x 轴和 y 轴的标签
xlabel('λ_1');
ylabel('λ_2');
zlabel('SRE');
title('DC1');
% 设置 x 轴和 y 轴的刻度范围和标签
xticks(1:6);  % 设置 x 轴刻度为 1 到 6
yticks(1:6);
xticklabels({'1e-4', '5e-4', '1e-3', '5e-3', '5e-2', '1e-2'});  % 设置 x 轴刻度标签
yticklabels({'1e-6', '1e-5', '5e-5', '1e-4', '1e-3', '1e-2'});
ax = gca;
% 设置坐标轴字体大小
set(ax, 'FontSize', 18); % 你可以根据需要调整字体大小

axes(h(2));
load SREv(GLCGDO)_30db_DC2.mat;

% 定义数据矩阵 Z
Z = SREv_30db_DC2(2:6, 1:5);
% Z = SREv_30db_DC2(2:6, 1:5);
% 创建三维表面图
surfc(Z);

% 添加色标并设置颜色映射
colorbar;
colormap jet;

% 自定义图形的外观
ax = gca;
ax.LineWidth = 2;
% 添加 x 轴和 y 轴的标签
xlabel('λ_1');
ylabel('λ_2');
zlabel('SRE');
title('DC2');

% 设置 x 轴和 y 轴的刻度范围和标签
xticks(1:6);  % 设置 x 轴刻度为 1 到 6
yticks(1:6);
xticklabels({'1e-4', '5e-4', '1e-3', '5e-3', '5e-2', '1e-2'});  % 设置 x 轴刻度标签
yticklabels({'1e-6', '1e-5', '5e-5', '1e-4', '1e-3', '1e-2'});
ax = gca;
% 设置坐标轴字体大小
set(ax, 'FontSize', 18); % 你可以根据需要调整字体大小
% 正常导入一个data的M可以画出来

% 画光谱反射率
figure

% for j=1:5
%     i=supp(j);
%     
% %     plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(i)])
%     plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(j)])
%     hold on 
% end

for i=1:9

    
%     plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(i)])
    plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(i),])
    axis([0 250 0 1])
    lgd = legend;
    lgd.FontSize = 8;
    hold on 
end

% plot(A(:,9),'LineWidth',2,'DisplayName','Endmember #9')
% plot(A(:,9),'LineWidth',2,'DisplayName','端元 #9')
hold off 
legend
xlabel('The number of bands')
ylabel('Reflectances')
% xlabel('波段','FontSize',16)
% ylabel('反射率','FontSize',16)
%% 俩个一起画
% 调用tight_subplot函数创建紧凑的子图
h = tight_subplot(1, 2, 0.05, 0.1, 0.1);

axes(h(1));
load data5_40db.mat;
for j=1:5
    i=supp(j);
    plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(j)])
    hold on 
end
hold off 
legend
xlabel('The number of bands','FontSize',16)
ylabel('Reflectances','FontSize',16)
    ax = gca;
    % 设置坐标轴字体大小
    set(ax, 'FontSize', 16); % 你可以根据需要调整字体大小
 axes(h(2));
 load data4_40db.mat;
for i=1:9
    plot(A(:,i),'LineWidth',2,'DisplayName',['Endmember #' num2str(i),])
    axis([0 250 0 1])
    lgd = legend;
    lgd.FontSize = 8;
    hold on 
end
hold off 
legend
xlabel('The number of bands','FontSize',16)
ylabel('Reflectances','FontSize',16)
    ax = gca;
    % 设置坐标轴字体大小
    set(ax, 'FontSize', 16); % 你可以根据需要调整字体大小
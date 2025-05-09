figure
% [ha, pos] = tight_subplot(1,5,[.025 .025],[.05 .05],[.05 .15]);
[ha, pos] = tight_subplot(1,5,[0.04, 0.02],[0.015, 0.05],[0.05, 0.15]);%下外边距，上，左右
% 第一个数组控制子图之间的距离，第一个参数为上下距离，第二个为左右距离。
     % 后面两个数组控制外边距，分别是下外边距，上，左右


axes(ha(1));% axes:为当前子图创建笛卡尔坐标系，保证所有操作是在当前坐标系内完成。
imagesc(Xim(:,:,1), [0 1])
% imagesc(Xim(:,:,2))
axis image %按原始比例显示图像
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(2));
imagesc(Xim(:,:,2), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar
axes(ha(3));
imagesc(Xim(:,:,3), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(4));
imagesc(Xim(:,:,4), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[])
colorbar

axes(ha(5));
imagesc(Xim(:,:,5), [0 1])
axis image
% axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
colorbar
% axes(ha(6));
% imagesc(Xim(:,:,6), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar
% 
% axes(ha(7));
% imagesc(Xim(:,:,7), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar
% 
% axes(ha(8));
% imagesc(Xim(:,:,8), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar
% 
% axes(ha(9));
% imagesc(Xim(:,:,9), [0 1])
% axis image
% % axis square, set(gca,'xtick',[]), set(gca,'xticklabel',[]), set(gca,'ytick',[]), set(gca,'yticklabel',[]);
% colorbar
colormap jet
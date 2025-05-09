% % x_ave = mean(X_hat_tv(131:160,:),2);
% x_ave = mean(X_hat_tv,2);
% figure(1)
% stem(x_ave, 'fill','r-.')
% legend('SUnSAL-TV')
% xlabel('Endmember number in the spectral library')
% ylabel('Average abundance value per pixel')
figure;% 生成新的图形窗口 
x_ave = mean(X_hat_tv,2);
stem(x_ave, 'fill','r-.');
legend('SUnSAL-TV')


x_ave = mean(XT,2);
figure(2)
stem(x_ave, 'fill','r-.')
legend('GroundTruth')
xlabel('Endmember number in the spectral library')
ylabel('Average abundance value per pixel')

axes('Position',[0.1,0.1,0.8,0.8])

x_ave = mean(X_hat_sl,2);
stem(x_ave, 'fill','r-.')
legend('SUSRLR-TV')
xlabel('Endmember number in the spectral library')
ylabel('Average abundance value per pixel')
% ylim([0, 0.4]);
axes('Position',[0.5,0.5,0.28,0.28])
x_ave = mean(X_hat_sl(131:160,:),2);
stem(x_ave, 'fill','r-.')
set(gca,'XTickLabel',{"130","140","150","160"}); 
ylim([0, 0.01]);

axes('Position',[0.1,0.1,0.8,0.8])
% x_ave = mean(X_hat_tv(131:160,:),2);
x_ave = mean(X_hat_tv(2:end,:),2);
stem(x_ave, 'fill','r-.')
legend('SUnSAL-TV')
xlabel('Endmember number in the spectral library')
ylabel('Average abundance value per pixel')
ylim([0, 0.25]);
axes('Position',[0.2,0.5,0.28,0.28])
x_ave = mean(X_hat_tv(131:160,:),2);
stem(x_ave, 'fill','r-.');
set(gca,'XTickLabel',{"130","140","150","160"}); 
ylim([0, 0.01]);
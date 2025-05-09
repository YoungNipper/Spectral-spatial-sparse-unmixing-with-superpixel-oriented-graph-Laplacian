% 此函数就是软阈值函数，不知道为什么要写的这么复杂，让人看不懂！
%   x./(y+T)就相当于sign(x),在|x|＜T求值虽然变成其他的数，有正有负，但
%   y = max(abs(x) - T, 0)在|x|＜T范围内为0，乘起来仍然为0，和符号没有关系了。
%所以还是简单的软阈值函数，写的什么呀。

function y = soft(x,T)

T = T + eps; %eps ， matlab默认最小浮点数精度。
y =sign(x).* max(abs(x) - T, 0);
end
% y = max(abs(x) - T, 0);
% y = y./(y+T) .* x;


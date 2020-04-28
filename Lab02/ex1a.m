## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% n from 1 to 100
n = linspace(0,2*pi,50)';

% B < -1
B = -2;
result1 = xnB(n,B);


% -1 < B < 0
B = -0.5;
result2 = xnB(n,B);

% 0 < B < 1
B = 0.5;
result3 = xnB(n,B);

% 1 < B
B = 2;
result4 = xnB(n,B);

Y = [result1',result2',result3',result4'];

stem(n,Y);
title('Plot of xn for various B')
xlabel('n')
ylabel('xn')
legend('B < -1','-1 < B < 0','0 < B < 1','1 < B');
grid on;
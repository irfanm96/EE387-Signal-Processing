## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% sampling frequency 
Ts = 5;

% part 1

% t to plot continus time signals
t = 0:0.01:70;
% n = KTs
n = 0:Ts:70;

% generate X(t)
xt = cos(t*2*pi/12);
% generate X(n) 
xn = cos(n'*2*pi/12);

% plot them in the same graph
plot(t,xt,'linewidth',1.5);
hold on;
stem(n,xn);
grid on;
title('Plot of xn and its sampled signal part 1')
legend('X(t)','X(n)');

% part 2

% t to plot continus time signals
t = 0:0.01:100;
% n = KTs
n = 0:Ts:100;



% generate X(t)
xt = cos(t*8*pi/31);
% generate X(n) 
xn = cos(n'*8*pi/31);

% plot in new figure for the new x(t),x(n)
figure;


% plot them in the same graph
plot(t,xt);
hold on;
stem(n,xn);
grid on;
title('Plot of xn and its sampled signal part 2')
legend('X(t)','X(n)');

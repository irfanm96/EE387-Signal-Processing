## Copyright (C) 2020 irfan

## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% get some discrete points
x = linspace(0,20,40);

% generate xn
xn = 0.5.^x.*ustep(x,0);

% generate hn
hn = ustep(x,0);
% do discreate convolution
yn = conv_disc(xn,hn);

% plot xn 
subplot(3,1,1); 
stem(x,xn,'r');
grid on; 
title('Input Signal x[n]');
xlabel('n');
ylabel('x(n)');

% plot hn
subplot(3,1,2); 
stem(x,hn,'b');
grid on;
title('Impulse h[n]');
xlabel('n');
ylabel('h(n)');

% plot y(n)
x2 = linspace(0,20,length(yn));

subplot(3,1,3);
stem(x2,yn,'g');
grid on; 
title('y[n] = x[n] * h[n]');
xlabel('n');
ylabel('y[n]');
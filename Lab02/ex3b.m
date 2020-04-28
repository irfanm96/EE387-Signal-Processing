## Copyright (C) 2020 irfan

## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% for bank system

xn = 1:5:100;
yn = bank_balance(xn); % get yn

% deconv to get hn - impulse response
hn = deconv(yn,xn);
display("Impulse response of banking system");
display(hn);

% plot xn
subplot(3,1,1);
stem(xn);
grid on;
title('X(n)');xlabel('n');ylabel('x(n)');

% plot yn
subplot(3,1,2);
stem(yn);
title('y(n)');xlabel('n');ylabel('y(n)');
grid on;

% plot hn
subplot(3,1,3);
stem(hn);
title('h(n) = Impulse response of banking system');xlabel('n');ylabel('h(n)');
grid on;

% for merchant savings

xn = 1:5:100;
yn = merchant_savings(xn); % get yn
% deconv to get hn - impulse response
hn = deconv(yn,xn); 
display("Impulse response of merchant savings system");
display(hn);

figure;
% plot xn
subplot(3,1,1);
stem(xn);
grid on;
title('X(n)');xlabel('n');ylabel('x(n)');

% plot yn
subplot(3,1,2);
stem(yn);
title('y(n)');xlabel('n');ylabel('y(n)');
grid on;

% plot hn
subplot(3,1,3);
stem(hn);
title('h(n) = Impulse response of merchant savings system');xlabel('n');ylabel('h(n)');
grid on;

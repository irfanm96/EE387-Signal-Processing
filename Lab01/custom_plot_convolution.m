## Copyright (C) 2020 irfan
## 
## Author: irfan <irfan@mbp>

function custom_plot_convolution (xn, hn)
  
% will plot grpahs in a new window
figure;

% get n values equally from -6 to 6
n_1 = linspace(-6,6,length(xn));

% plot in the 1st index in the 3 row 1 column subplot
subplot(3,1,1);
% used stem function since its a discrete time signal
stem(n_1, xn);

% set the axis and lables and etc..
grid on;
axis( [-7 7 -1 5] ) ;
xlabel('n');
ylabel('x(n)');
title(['Plot : x(n) = ' mat2str(xn)''])

% similary plot h(n)
n_2 = linspace(-6,6,length(hn));
subplot(3,1,2);
stem(n_2, hn);
grid on;
axis( [-7 7 -1 5] ) ;
xlabel('n');
ylabel('h(n)');
title(['Plot : h(n) = ' mat2str(hn)''])

% get the convolution of x(n) and h(n)
yn = conv(xn,hn);

% plot y(n)
n_3 = linspace(-6,6,length(yn));
subplot(3,1,3);
stem(n_3, yn);
grid on;
axis( [-7 7 -1 9] ) ;
xlabel('n');
ylabel('y(n)');
title('Plot : y(n) = x(n)*h(n)');

endfunction


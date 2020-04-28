
% initialize data
n = 1:15;
xn = [1,1,1,1,1,0,0,0,0,0,0,0,0,0,0];
hn = [2,4,8,16,32,64,0,0,0,0,0,0,0,0,0];

custom_conv_y = conv_disc(xn,hn);
built_in_conv_y = conv(xn,hn);
display(built_in_conv_y);

% check wheather the two outputs are identical
if(isequal(custom_conv_y,built_in_conv_y))
display("The two functions give the same output")
endif

% graphical proof

% plot x(n) h(n)
subplot(4,1,1);
stem(n,xn,'r');
hold on;
stem(n,hn,'b');
grid on;
title('x[n] and h[n]'); 
legend('x[n]','h[n]')

% plot custom function output
n_1 = 0:length(custom_conv_y)-1;
subplot(4,1,2); 
stem(n_1,custom_conv_y)
grid on; 
title('Output of Custom Convolution Function')
ylabel('conv_disc(x(n),h(n))');
xlabel('n');

% plot Built in function output

subplot(4,1,3);
stem(n_1,built_in_conv_y)
grid on;
title('Output of MATLAB Buiult in conv function');
ylabel('conv(x(n),h(n))');
xlabel('n');

% plot difference
subplot(4,1,4);
stem(n_1,custom_conv_y-built_in_conv_y)
grid on;
title('Difference between outputs')
ylabel('custom_conv_y - built_in_conv_y');
xlabel('n')
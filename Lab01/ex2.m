## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>

% sampling frequency
f_s = 100;

% sampling period
T_s = 1/f_s;

t = [-5:T_s:5];

% generate rectangle wave
x1 = rect(t);
figure;
plot(t,x1);
grid on;
axis( [-2 2 -1 2]);

xlabel( 'time (sec)' ) ;
ylabel( 'x_1(t)' ) ;
title ('Plot 1: A rectangular pulse');


% First let's create and plot the time- delayed signal, x 2 (t) = rect(t-1)
x2 = rect(t-1);
figure;
plot(t,x2);
axis( [-2 2 -1 2]);


% Now let's try to make the time-scaled signal x 3 (t) = rect(t/2)
x3 = rect(t/2);
figure;
plot(t,x3);
axis( [-2 2 -1 2]);

%create another signal
x4 = rect(t)+(0.5*rect(t-1));

%create time reversal of x4
x5 = rect(-t)+(0.5*rect(-t-1)); 

%create another signal
x6 = rect(1-t)+(0.5*rect(-t));

figure;
subplot(3,2,1)
plot(t,x1);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_1(t) = rect(t)');
title ('Plot 1: A rectangular pulse, x1(t) = rect(t)');

subplot(3,2,2);
plot(t,x2);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_2(t) = x_1(t-1)');
title('Plot 2: time- delayed signal, x2(t) = rect(t-1)');

subplot(3,2,3);
plot(t,x3);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_3(t) = x_1(t/2)');
title('Plot 3: time-scaled signal x3(t) = rect(t/2)');


subplot(3,2,4);
plot(t,x4);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_4(t) = rect(t)+(1/2)rect(t-1)');
title('Plot 4: x4(t) = rect(t)+(1/2)rect(t-1)');


subplot(3,2,5);
plot(t,x5);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_5(t) = rect(-t)+(1/2)rect(-t-1)');
title('Plot 5: time reversal as x5(t) = x4(-t) = rect(-t)+(1/2)rect(-t-1)');



subplot(3,2,6);
plot(t,x6);
grid on;
axis([-2 2 -1 2]);
xlabel( 'time (sec)' );
ylabel('x_6(t) = x_1(t/2)');
title('Plot 6: x6(t) = x4(1-t) = rect(1-t)+(1/2)rect(-t)');


clear all;
f_s = 1000; % sampling frequency 1000 hz
T_s = 1/f_s;
t = -5:T_s:5;

% generate rectangle wave
x1 = rect(t);

y = conv(x1,x1); % get the convolution

% Now try plotting y:

%plot(t,y); will give an error

length(y); % 2001
length(t); % 1001

% so it satisfies, length(y) = 2*length(t)-1

% separate time axis for the signal y as:
t_y = -10:T_s:10;

figure;
plot(t_y, y);
title("Wrong Plot with the Peak of f_s = 1000");
grid on;


y1 = T_s*conv(x1,x1);

figure;
plot(t_y, y1);
grid on;
axis( [-2 2 -1 2] ) ;
xlabel( 'time (sec)');
ylabel('y_1(t)');
title('Figure : y_1(t) = x_1(t)*x_1(t)');


% define x(n), h(n)
xn = [1,2,4];
hn = [1,1,1,1,1];

% plot the corrsponding plots
custom_plot_convolution(xn,hn);

xn = [1,2,3,4,5];
hn = [1];

custom_plot_convolution(xn,hn);

xn = hn = [1,2,0,2,1];

custom_plot_convolution(xn,hn);

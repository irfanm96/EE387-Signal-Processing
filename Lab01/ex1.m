## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
clear all;
Ts=0.01; 
t= -5:Ts:5;
r = 3;
y1 = ramp(t,r,3); % y = r(t+3)
y2 = ramp(t,-2*r,1); % y = -2*r(t+1) 
y3 = ramp(t,r,0); % y = 3rt
y4 = ustep(t,-3); % y = u(t-3)

% y(t) = r(t+3) – 2r(t+1) +3r(t) – u(t-3)
y = y1+y2+y3-y4;

% plot the graph and set grid, axis, labels,and the title
plot(t,y,'k');
axis([-5 5 -1 7]); 
grid on;

xlabel( 'time (sec)' ) ;
ylabel( 'y(t)' ) ;
title ('Plot : y(t) = r(t+3) – 2r(t+1) +3r(t) – u(t-3)');

% plot the damped sinusoidal grpah in another window
figure;
Ts=0.01; 
t= 0:Ts:5;
% construct the damped signal
xt = 3*exp(-t).*cos(4*pi*t);
plot(t,xt,'m','linewidth',1.5);
grid on;
xlabel( 'time (sec)' ) ;
ylabel( 'x(t)' ) ;
title ('Plot : x(t) = 3 * exp(-t) * cos(4*pi*t)');

% get the upper and lower envelopes
[up,lo] = envelope(xt);

% plot on the same graph
hold on;
plot(t,up,t,lo)
legend('damped signal','upper envelope','lower envelope')
hold off;
## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
clear all;
Ts=0.01; 
t= -5:Ts:5;
y1 = ramp(t,3,3);
y2 = ramp(t,-6,1);
y3 = ramp(t,-3,1);
y4 = ustep(t,-3);
y = y1+y2+y3-y4;

plot(t,y3)
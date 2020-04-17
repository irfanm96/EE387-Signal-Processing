function y = ramp(t,m,ad)
% t: length of time
% m: slope of the ramp function
% ad: advance (positive), delay (negative) factor

% generate the required ramp with the slope and the starting point 
 y1 = m*(t+ad);

% multiply the generated function with the unitstep of the same t,ad
% so that the negative part will be eliminated
 
 y = y1.*ustep(t,ad); 
endfunction

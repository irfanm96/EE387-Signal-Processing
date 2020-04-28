function y = ustep(t,ad)
% t: length of time
% ad: advance (positive), delay (negative) factor% Write your code
 
% shorthand conditional statment which gives 1 or 0 based on the condition
% this conditional statment is evaluated for each element in t  
 y = (t+ad) >= 0;
endfunction

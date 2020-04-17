## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>

function xt = rect(t)
  
 % xt = 1 when (t < 0.5) and (t>=-0.5)
 % elsewhere 0
 % shorthand conditional statment which gives 1 or 0 based on the condition
 % this conditional statment is evaluated for each element in t 
 xt = (t < 0.5) & (t>=-0.5); 
 endfunction

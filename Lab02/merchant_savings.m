## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% M will be an array something like [100,10,0,0]
function y = merchant_savings(M)

  y(1) = M(1)/2; % first months savings
 
 % calculate next savings based on savings given and add the previous savings
  for i = 2 : length(M)
    y(i) = y(i-1) + (M(i)/2) ;
  endfor

endfunction

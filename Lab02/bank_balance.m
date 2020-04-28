## Copyright (C) 2020 irfan
## Author: irfan <irfan@mbp>
## Created: 2020-04-26

% initial_balance will be an array something like [100,10,0,0]
function y = bank_balance(initial_balance)
  
  intrest_rate = 0.01; % interest rate
  y(1) = initial_balance(1)*(1+intrest_rate); % first months balance
  for i=2:length(initial_balance)
    y(i) = (y(i-1)+ initial_balance(i))* (1 + intrest_rate); % generate balance for each month
  endfor 

endfunction

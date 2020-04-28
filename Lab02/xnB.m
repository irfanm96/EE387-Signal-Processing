
function result = xnB(n,B)
  
  % generate the result as given in the equation
  for i = 1: length(n)
    result(i) = 10*(B^n(i)); 
  endfor
  
endfunction

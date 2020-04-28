## Copyright (C) 2020 irfan

## Author: irfan <irfan@mbp>
## Created: 2020-04-26

function y = conv_disc(xn, hn)
 
 % get initial sizes of xn, hn
 sizeX = length(xn);
 sizeH = length(hn);

 % fill rest of the array with zeros until both has same size 
 xn = [xn,zeros(1,sizeH)];
 hn = [hn,zeros(1,sizeX)];

 % get the size of the output
 out_size = sizeH+sizeX-1 ;

 % generate elements of output on for loop
 for n=1:out_size
    y(n) = 0;
    for k=1:sizeX
      if( n+1 > k )
        % getting the sum of Xn(n) * Hn(n-k)
        y(n) = y(n)+xn(k)*hn(n-k+1);
      endif
    endfor
 endfor
  
endfunction

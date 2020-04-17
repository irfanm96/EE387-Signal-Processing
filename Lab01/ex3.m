clear all;
l = 7;
n = linspace(0,6,l);
% code to generate the function h(n)
for k = 1 : l
  if(n(k)>=0 && n(k)<4)
     hn(k) = 0.5^n(k);
  else   
     hn(k) = 0;
  endif
endfor  

subplot(3,1,1);
% used stem since its a discrete time signal
stem(n,hn,'linewidth',1.3);
% set grid, labels,title and axis as usual
grid on;
axis([-2 8 -2 3]);
title('h(n) vs n');
xlabel('n');
ylabel('h(n)');

% initialize the yn function given
yn = [1,2,2.5,3,3,3,2,1,0];

n_1 = linspace(0,6,length(yn));
subplot(3,1,2);

% plot y(n)
stem(n_1,yn,'linewidth',1.3);
grid on;
axis([-2 8 -2 4]);
title('y(n) vs n');
xlabel('n');
ylabel('y(n)');

% obtain the deconvolution for y(n) and h(n)
xn = deconv(yn,hn);
n_2 = linspace(0,6,length(xn));
subplot(3,1,3);
stem(n_2,xn,'linewidth',1.3);
grid on;
axis([-2 8 0 3]);
title('Deconvolution of y(n) & h(n)');
xlabel('n');

% input xn that will generate the output sequence y(n) = {1, 2, 2.5, 3, 3, 3, 2, 1,0...}.
display(xn);
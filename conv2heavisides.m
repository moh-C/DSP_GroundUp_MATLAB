clear;clc;close;
limit = 20;

primary_limit = -limit:1:limit;
secondary_limit = -2*limit+1:1:2*limit+1;
quad_limit = -4*limit+1:1:4*limit+1;

h = heaviside(primary_limit+5)-heaviside(primary_limit-5);
x = heaviside(primary_limit+5)-heaviside(primary_limit-5);
y = conv(x,h);
autoConv = conv(y,y);

subplot(2,2,1)
stem(primary_limit, h);
title('The Input')
xlim([-limit limit]);

subplot(2,2,2)
stem(primary_limit, x);
title('The Impulse Response')
xlim([-limit limit]);

subplot(2,2,3);
stem(secondary_limit, y);
title('Convolved 2 times');
xlim([-2*limit+1 2*limit+1]);

subplot(2,2,4);
stem(quad_limit, autoConv);
title('Convolved 4 times');
xlim([-4*limit+1 4*limit+1]);
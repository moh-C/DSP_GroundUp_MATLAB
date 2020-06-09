clear; clc; close;
f1 = 20;
f2 = 2;
ts = 1/1000;
T = 3;
t = 0:ts:T;
sgn_20 = sin(2*pi*f1*t);
sgn_2 = sin(2*pi*f2*t);
sgn_mix = sgn_2 + sgn_20;
fltr_pnts = 50;
sgn_out = movmean(sgn_mix,fltr_pnts);

subplot(2,1,1);
plot(sgn_mix);

subplot(2,1,2);
plot(sgn_out);
hold on;
plot(sgn_2, '-x');
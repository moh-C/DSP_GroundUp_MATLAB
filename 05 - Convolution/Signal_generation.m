clear; clc; close;
f1 = 20;
f2 = 2;
T = 3;
imp_response = load('imp_response_1_6_100.mat');
imp_response = imp_response.imp_response_1_6_100;
ts = 1/100;
t = 0:ts:T;
signal_20hz = sin(2*pi*f1*t);
signal_2hz = sin(2*pi*f2*t);
signal_mixed = signal_20hz + signal_2hz;
%filterDesigner
subplot(4,1,1);
plot(signal_2hz);
title('2HZ Signal');

subplot(4,1,2);
plot(signal_mixed);
title('Mixed Signal');
subplot(4,1,3);
plot(imp_response);
title('Impulse Response');
output_signal = conv(signal_mixed, imp_response);
subplot(4,1,4);
plot(output_signal);
title('Output of Convolution');
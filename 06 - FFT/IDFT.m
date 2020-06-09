clear; clc; close;
f1 = 20;
f2 = 2;
T = 3;
ts = 1/100;
t = 0:ts:T;
sgn_2HZ = sin(2*pi*f1*t);
sgn_20HZ = sin(2*pi*f2*t);
sgn_20_2hz = sgn_2HZ + sgn_20HZ;
sgn_FFT = fft(sgn_20_2hz);
sgn_FFT_Mag = abs(sgn_FFT);
sgn_recons = ifft(sgn_FFT);

subplot(3,1,1);
plot(sgn_20_2hz);
title('Signal 20HZ');

subplot(3,1,2);
plot(sgn_FFT_Mag);
title('Magnitude of FFT');

subplot(3,1,3);
plot(sgn_recons);
title('Reconstruction');

% difference = sgn_20_2hz - sgn_recons;
% plot(difference);
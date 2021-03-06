clear; clc; close;
f1 = 20;
f2 = 2;
T = 3;
ts = 1/100;
t = 0:ts:T;
signal_20hz = sin(2*pi*f1*t);
signal_2hz = sin(2*pi*f2*t);
signal_mixed = signal_20hz + signal_2hz;
signal_FFT = fft(signal_mixed);
FFT_Mag = abs(signal_FFT)./length(signal_FFT);
FFT_Phase = unwrap(angle(signal_FFT));
subplot(3,1,1);
plot(signal_mixed);
subplot(3,1,2);
plot(FFT_Mag);
subplot(3,1,3);
plot(FFT_Phase);
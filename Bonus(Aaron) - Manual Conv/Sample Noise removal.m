clear;clc;close;
limit = 20;

primary_limit = -limit:0.01:limit;
x = heaviside(primary_limit+5)-heaviside(primary_limit-5);
x = x + 0.2 * rand(1, length(x));

plot(primary_limit,x);
ylim([-0.2 1.2]);

fft_x = fft(x);
fft_mag = abs(fft_x);
plot(fft_mag);
pause();
indices = fft_mag > 0;
fft_mag_m = fft_mag .* indices;
ifft_x = ifft(fft_x);
plot(ifft_x);
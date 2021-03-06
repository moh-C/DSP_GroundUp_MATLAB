function Hd = filter_1_6_100
%FILTER_1_6_100 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.5 and Signal Processing Toolbox 8.1.
% Generated on: 09-Jun-2020 13:43:41

% FIR least-squares Lowpass filter designed using the FIRLS function.

% All frequency values are in Hz.
Fs = 100;  % Sampling Frequency

N     = 39;  % Order
Fpass = 1;   % Passband Frequency
Fstop = 6;   % Stopband Frequency
Wpass = 1;   % Passband Weight
Wstop = 1;   % Stopband Weight

% Calculate the coefficients using the FIRLS function.
b  = firls(N, [0 Fpass Fstop Fs/2]/(Fs/2), [1 1 0 0], [Wpass Wstop]);
Hd = dfilt.dffir(b);

% [EOF]

signals = load('20_2HZ_Signals.mat');
signal_mixed = signals.signal_mixed;
output = cumsum(signal_mixed);
subplot(2,1,1);
plot(signal_mixed);
title('Original Signal');
subplot(2,1,2);
plot(output);
title('Output Signal');
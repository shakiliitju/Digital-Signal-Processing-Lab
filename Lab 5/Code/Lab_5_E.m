clc;
clear;
close all;
N = 1024;
fs = 8000;
f = input('Enter the frequency [1 to 5000]: ');
n = 0:N-1;
x = cos(2 * pi *50* (f / fs) * n); 
[Pxx, frequencies] = periodogram(x, [], N, fs);
figure;
plot(frequencies, 10 * log10(Pxx));
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Power Spectrum of x(n)');

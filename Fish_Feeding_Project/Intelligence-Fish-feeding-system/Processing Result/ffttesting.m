close all
clear all
clc

Fs = 1000;
Ts = 1/Fs;
L = 1000;
t = (0:L-1)*Ts;
x = 0.7*sin(2*pi*80*t)+sin(2*pi*155*t) + sin(2*pi*200*t);
y = x+ .02*randn(size(t));
figure
plot(Fs*t(1:50),y(1:50))
xlabel('Time')
NFFT = 2^nextpow2(L);
Y =fft(y,NFFT)/L;
f = Fs/2*(linspace(0,1,NFFT/2+1));
figure
plot(f,2*abs(Y(1:NFFT/2+1)))
xlabel('Frequency (Hz)')
ylabel('Amplitude')

close all
clear all
clc

load firstData.mat; load Time.mat
eMA = sqrt(eAccelerometer(:,1).^2 + eAccelerometer(:,2).^2 + ...
            eAccelerometer(:,3).^2);
eMG = sqrt(eGyroscope(:,1).^2 + eGyroscope(:,2).^2 + eGyroscope(:,3).^2);
eMM = sqrt(eMagnetometer(:,1).^2 + eMagnetometer(:,2).^2 + ...
            eMagnetometer(:,3).^2);

fMA = sqrt(fAccelerometer(:,1).^2 + fAccelerometer(:,2).^2 + ...
            fAccelerometer(:,3).^2);
fMG = sqrt(fGyroscope(:,1).^2 + fGyroscope(:,2).^2 + fGyroscope(:,3).^2);
fMM = sqrt(fMagnetometer(:,1).^2 + fMagnetometer(:,2).^2 + ...
            fMagnetometer(:,3).^2);

eN = length(fAccelerometer);
window = 25;
EsdMA = []; EsdMG = []; EsdMM = []; FsdMA = []; FsdMG = []; FsdMM = [];
EvMA = []; EvMG = []; EvMM = []; FvMA = []; FvMG = []; FvMM = [];

for i = 1:window:eN - window
    
   sdA = std(eMA(i:window+i)); FsdA = std(fMA(i:window+i));
   vA = var(eMA(i:window+i));  FvA = var(fMA(i:window+i));
   EsdMA = [EsdMA; sdA];       FsdMA = [FsdMA; FsdA];
   EvMA = [EvMA; vA];          FvMA = [FvMA; FvA];
   sdG = std(eMG(i:window+i)); FsdG = std(fMG(i:window+i));
   vG = var(eMG(i:window+i));  FvG = var(fMG(i:window+i));
   EvMG = [EvMG; vG];          FvMG = [FvMG; FvG];
   EsdMG = [EsdMG; sdG];       FsdMG = [FsdMG; FsdG];
   sdM = std(eMM(i:window+i)); FsdM = std(fMM(i:window+i));
   vM = var(eMM(i:window+i));  FvM = var(fMM(i:window+i));
   EsdMM = [EsdMM; sdM];       FsdMM = [FsdMM; FsdM];
   EvMM = [EvMM; vM];          FvMM = [FvMM; FvM];
         
end

time = 1:length(EsdMA);
plot(time,EsdMA)
hold on
plot(time,FsdMA,'r')
%title('standard deviation of Mangitude of Accelerometer Reading')
xlabel('Samples');
ylabel ('Acceleration (g)');
legend('Escape', 'Feeding')
axis tight 
figure
plot(time,EsdMG)
hold on
plot(time,FsdMG,'r')
%title('standard deviation of Gyroscope Reading')
xlabel('Sample');
ylabel ('Angular Velocity (GV)');
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eAccelerometer(:,1))
hold on
plot(fAccelerometer(:,1), 'r')
title('x-axis of the accelerometer reading')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eAccelerometer(:,2))
hold on
plot(fAccelerometer(:,2), 'r')
title('y-axis of the accelerometer reading')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eAccelerometer(:,3))
hold on
plot(fAccelerometer(:,3), 'r')
title('z-axis of the accelerometer reading')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eGyroscope(:,3))
hold on
plot(fGyroscope(:,3), 'r')
title('z-axis of the Gyroscope reading')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eGyroscope(:,1))
hold on
plot(fGyroscope(:,1), 'r')
title('x-axis of the Gyroscope reading')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eGyroscope(:,2))
hold on
plot(fGyroscope(:,2), 'r')
title('y-axis of the Gyroscope reading')
legend('Escape', 'Feeding')
axis tight 
eY = fft(eMA,1024);         fY = fft(fMA,1024);
eY(1) = [];                 fY(1) = [];
eN = length(eY);            fN = length(fY);
eAmpltd = abs(eY(2:eN-1));  fAmpltd = abs(fY(2:fN-1));
Fs = 1/2;
eFreq =(2:eN-1)*Fs;         fFreq =(2:fN-1)*Fs;

%Fs = 1000;
%Ts = 1/Fs;
%L = 2000;
%Times = 0:L;
%t =(0:L-1)*Ts;
%NFFT = 2^nextpow2(L);
%ey = fft(Times,NFFT);
%efreq = Fs/2*(NFFT);
%eAmpld = 2*abs(eMA(0,1:NFFT/2+1));



%% Axis and Inter-axis differences

Ax = [eAccelerometer(:,1) fAccelerometer(:,1)];
Ay = [eAccelerometer(:,2) fAccelerometer(:,2)];
Az = [eAccelerometer(:,3) fAccelerometer(:,3)];

Gz = [eGyroscope(:,3) fGyroscope(:,3)];

diffAxAy = Ax - Ay;
diffAyAz = Ay - Az;

maxDiffAxAy = max(diffAxAy);    meanMaxDiffAyAz = max(mean(diffAyAz));
minDiffAxAy = min(diffAxAy);    meanMinDiffAyAz = min(mean(diffAyAz));

rangeAyAz = meanMaxDiffAyAz - meanMinDiffAyAz;

% Output
maxAx = max(Ax);
meanAy = mean(Ay);
maxGz = max(Gz);
rangeAxAy = maxDiffAxAy - minDiffAxAy;

plot(Ax(:,1))
hold on
plot(Ax(:,2), 'r')
title('Mangitude of the Horizontal swing of Accelerometer')
legend('Escape', 'Feeding')
axis tight 
figure
plot(Ay(:,1))
hold on
plot(Ay(:,2), 'r')
title('Mangitude of the y-axis swing of Accelerometer')
legend('Escape', 'Feeding')
axis tight 
figure,
plot(eTime,eMA);
xlabel('Time(Sec)');
ylabel ('Mag. of the Acc. Vector');
title ('Escape Activity with X axis in Time Domain');
axis tight 
hold on
plot(eTime,fMA);
xlabel('Time(Sec)');
ylabel ('Mag. of the Acc. Vector');
title ('Feeding Activity with X axis in Time Domain');
axis tight 
figure,
subplot(1,2,1);
plot(eFreq,eAmpltd)
xlabel('Frequency (Hz)');
ylabel ('Amplitude');
title ('Escape with X axisin Frequency Domain');
axis tight 
subplot(1,2,2);
plot(fFreq,fAmpltd)
xlabel('Frequency (Hz)');
ylabel ('Amplitude');
title ('Feeding with X axisin Frequency Domain');
 axis tight 
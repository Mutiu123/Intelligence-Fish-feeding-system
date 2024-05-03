close all
clear all
clc
 
 
MyEscapeData = xlsread('Dataset_S2.xlsx');
N = 2000;
Time = 1:N;
%Time = MyEscapeData(:,1);
Accelerometer_Xaxis = MyEscapeData(:,5);
Accelerometer_Yaxis = MyEscapeData(:,6);
Accelerometer_Zaxis = MyEscapeData(:,7);
figure
plot(Time,Accelerometer_Xaxis,'k')
axis tight
hold on
plot(Time,Accelerometer_Yaxis,'r')
axis tight
hold on
plot(Time,Accelerometer_Zaxis,'b')
axis tight
xlabel('Samples');
ylabel('Acceleration (g)');
% ylabel ('Amplitude');
title ('Feeding Activity/Accelerometer');
legend('X axis','Y axis','Z axis')

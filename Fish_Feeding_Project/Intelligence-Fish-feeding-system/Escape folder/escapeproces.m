close all
clear all
clc
 
 
MyEscapeData = xlsread('Dataset_S1.xlsx');
Time = MyEscapeData(:,1);
Magnetometer_Xaxis = MyEscapeData(:,2);
Magnetometer_Yaxis = MyEscapeData(:,3);
Magnetometer_Zaxis = MyEscapeData(:,4);
figure
plot(Time,Magnetometer_Xaxis,'r')
axis tight
hold on
plot(Time,Magnetometer_Yaxis,'g')
axis tight
hold on
plot(Time,Magnetometer_Zaxis,'k')
axis tight
xlabel('Time (Sec.)');
ylabel('Acceleration (M/S2)');
% ylabel ('Amplitude');
title ('Escape Activity/Magnetometer');
legend('X axis','Y axis','Z axis')

close all
clear all
clc
 
 
MyFeedingData = xlsread('Dataset_S2.xlsx');
Time = MyFeedingData(:,1);
Magnetometer_Xaxis = MyFeedingData(:,2);
Magnetometer_Yaxis = MyFeedingData(:,3);
Magnetometer_Zaxis = MyFeedingData(:,4);
 
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
title ('Feeding Activity/Magnetometer');
legend('X axis','Y axis','Z axis')

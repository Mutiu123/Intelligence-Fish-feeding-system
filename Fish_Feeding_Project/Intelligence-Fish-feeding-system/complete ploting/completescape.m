 
load compldataset.mat
%N = 2000;
%Time = 1:N;
Time = escape (:,1);
Magnetometer_Xaxis = escape (:,2);
Magnetometer_Yaxis = escape (:,3);
Magnetometer_Zaxis = escape (:,4);
Accelerometer_Xaxis = escape (:,5);
Accelerometer_Yaxis = escape (:,6);
Accelerometer_Zaxis = escape (:,7);
Gyroscope_Xaxis = escape (:,8);
Gyroscope_Yaxis = escape (:,9);
Gyroscope_Zaxis = escape (:,10);
Timef = feeding (:,1);
fMagnetometer_Xaxis = feeding (:,2);
fMagnetometer_Yaxis = feeding (:,3);
fMagnetometer_Zaxis = feeding (:,4);
fAccelerometer_Xaxis = feeding (:,5);
fAccelerometer_Yaxis = feeding (:,6);
fAccelerometer_zaxis = feeding (:,7);
fGyroscope_Xaxis = feeding (:,8);
fGyroscope_Yaxis = feeding (:,9);
fGyroscope_Zaxis = feeding (:,10);
%means = mean(Acelerometer_Xaxis,2);
%vars = var(Acelerometer_Xaxis);
%stds = std(Acelerometer_Xaxis);
figure
subplot (3,3,1);
% figure
plot(Time, Magnetometer_Xaxis,'k');
title ('x-direction');
%xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,2);
plot(Time,Magnetometer_Yaxis,'r')
title ('y-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,3);
plot(Time,Magnetometer_Zaxis,'b')
%axis tight
title ('z-direction');
%legend('x-axis','y-axis','z-axis')
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
subplot (3,3,4);
% figure
plot(Time, Accelerometer_Xaxis,'k');
%title ('Raw Data Escape Activity in x-direction');
%xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,5);
plot(Time,Accelerometer_Yaxis,'r')
%title ('Raw Data Escape Activity in y-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
%figure
subplot (3,3,6);
plot(Time,Accelerometer_Zaxis,'b')
%axis tight
%title ('Raw Data Escape Activity z-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
subplot (3,3,7);
% figure
plot(Time, Gyroscope_Xaxis,'k');
%title ('Raw Data Escape Activity in x-direction');
%xlabel('Time (Second)');
ylabel ('Angular Vel (GV)');
%axis tight
%hold on
% figure
subplot (3,3,8);
plot(Time,Gyroscope_Yaxis,'r')
%title ('Raw Data Escape Activity in y-direction');
xlabel('Time (Second)  Escape Activities');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,9);
plot(Time,Gyroscope_Zaxis,'b')
%legend('x-axis','y-axis','z-axis')
%FEEDING SECTION
figure
subplot (3,3,1);
% figure
plot(Timef, fMagnetometer_Xaxis,'k');
title ('x-direction');
%xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,2);
plot(Timef,fMagnetometer_Yaxis,'r')
title ('y-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,3);
plot(Timef,fMagnetometer_Zaxis,'b')
%axis tight
title ('z-direction');
%legend('x-axis','y-axis','z-axis')
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
subplot (3,3,4);
% figure
plot(Timef, fAccelerometer_Xaxis,'k');
%title ('Raw Data Escape Activity in x-direction');
%xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,5);
plot(Timef,fAccelerometer_Yaxis,'r')
%title ('Raw Data Escape Activity in y-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,6);
plot(Timef,fAccelerometer_zaxis,'b')
%axis tight
%title ('Raw Data Escape Activity z-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
subplot (3,3,7);
% figure
plot(Timef, fGyroscope_Xaxis,'k');
%title ('Raw Data Escape Activity in x-direction');
%xlabel('Time (Second)');
ylabel ('Angular Vel (GV)');
%axis tight
%hold on
% figure
subplot (3,3,8);
plot(Timef,fGyroscope_Yaxis,'r')
%title ('Raw Data Escape Activity in y-direction');
xlabel('Time (Second)   Feeding Activities');
%ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (3,3,9);
plot(Timef,fGyroscope_Zaxis,'b')
%axis tight
%title ('Raw Data Escape Activity z-direction');
%xlabel('Time (Second)');
%ylabel ('Acceleration (g)');
%legend('X-axis','y-axis','z-axis')
%subplot(2,1,2);
%plot(Time,means,'r')
%axis tight
%hold on
%plot(Time,vars,'g')
%axis tight
%hold on
%plot(Time,stds,'k')
%axis tight
%xlabel('Time (Sec.)');
%ylabel ('Acceleration(g)');
%title ('Processed Data');
%legend('mean','var','std')
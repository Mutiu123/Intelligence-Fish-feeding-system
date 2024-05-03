

feeding = xlsread('Dataset_S2.xlsx');
 N = 2000;
 Time = 1:N;
%Time = feeding (:,1);
Gyroscope_Xaxis = feeding (:,8);
Gyroscope_Yaxis = feeding (:,9);
Gyroscope_Zaxis = feeding (:,10);
%meanx = mean(Gyroscope_Xaxis);
%maxx = max(Gyroscope_Xaxis);
%stdx = std(Gyroscope_Xaxis);
%meany = mean(Gyroscope_Yaxis);
%maxy = max(Gyroscope_yaxis);
%stdy = std(Gyroscope_Yaxis);
%meanz = mean(Gyroscope_Zaxis);
%maxz = max(Gyroscope_Zaxis);
%stdz = std(Gyroscope_Zaxis);
figure
%subplot (2,1,1);
plot(Time, Gyroscope_Xaxis,'k');
axis tight
hold on
plot(Time,Gyroscope_Yaxis,'r')
axis tight
hold on
plot(Time,Gyroscope_Zaxis,'b')
axis tight
title ('Raw Data Feeding Activity/Gyroscope');
xlabel('Samples');
ylabel ('Turning rate (deg s-1)');
legend('X-axis','y-axis','z-axis')
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


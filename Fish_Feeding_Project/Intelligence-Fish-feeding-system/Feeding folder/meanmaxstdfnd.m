

Feeding = xlsread('Dataset_S2.xlsx');
Time = Feeding (:,1);
Gyroscope_Xaxis = Feeding (:,8);
Gyroscope_Yaxis = Feeding (:,9);
Gyroscope_Zaxis = Feeding (:,10);
meansx = mean(Gyroscope_Xaxis);
maxsx = max(Gyroscope_Xaxis);
stdsx = std(Gyroscope_Xaxis);

meansy = mean(Gyroscope_Yaxis);
maxsy = max(Gyroscope_yaxis);
stdsy = std(Gyroscope_Yaxis);

meansz = mean(Gyroscope_Zaxis);
maxsz = max(Gyroscope_Zaxis);
stdsz = std(Gyroscope_Zaxis);
figure
%subplot (2,1,1);
%plot(Time, Gyroscope_Xaxis,'k');
axis tight
hold on
plot(Time,Gyroscope_Yaxis,'r')
axis tight
hold on
plot(Time,Acelerometer_Zaxis,'b')
axis tight
title ('Raw Data Feeding Activity/Gyroscope');
xlabel('Time (Sec.)');
ylabel ('Acceleration (g)');
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


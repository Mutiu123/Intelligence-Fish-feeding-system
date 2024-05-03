

feeding = xlsread('Dataset_S2.xlsx');
Time = feeding (:,1);
Acelerometer_Xaxis = feeding (:,5);
Acelerometer_Yaxis = feeding (:,6);
Acelerometer_Zaxis = feeding (:,7);
means = mean(Acelerometer_Xaxis,2);
vars = var(Acelerometer_Xaxis);
stds = std(Acelerometer_Xaxis);
%subplot (2,1,1);
plot(Time, Acelerometer_Xaxis,'k');
axis tight
hold on
plot(Time,Acelerometer_Yaxis,'r')
axis tight
hold on
plot(Time,Acelerometer_Zaxis,'b')
axis tight
title ('Raw Data Feeding Activity (X-axis)');
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


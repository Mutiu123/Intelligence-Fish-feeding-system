

escape = xlsread('Dataset_S1.xlsx');
%N = 2000;
%Time = 1:N;
Time = escape (:,1);
Gyroscope_Xaxis = escape (:,8);
Gyroscope_Yaxis = escape (:,9);
Gyroscope_Zaxis = escape (:,10);
means = mean(Gyroscope_Xaxis);
vars = var(Gyroscope_Xaxis);
stds = std(Gyroscope_Xaxis);
%figure
%subplot (2,1,1);
figure
plot(Time, Gyroscope_Xaxis,'k');
title ('Raw Data Escape Activity/Gyroscope x-direction');
xlabel('Time (Second)');
ylabel ('Turning rate (deg s-1)');
%axis tight
%hold on
figure
plot(Time,Gyroscope_Yaxis,'r')
title ('Raw Data Escape Activity/Gyroscope y-direction');
xlabel('Time (Second)');
ylabel ('Turning rate (deg s-1)');
%axis tight
%hold on
figure
plot(Time,Gyroscope_Zaxis,'b')
%axis tight
title ('Raw Data Escape Activity/Gyroscope z-direction');
xlabel('Second');
ylabel ('Turning rate (deg s-1)');
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


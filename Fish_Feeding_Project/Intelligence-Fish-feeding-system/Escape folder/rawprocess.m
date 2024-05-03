
figure
escape = xlsread('Dataset_S1.xlsx');
N = 2000;
%Time = 1:N;
Time = escape (:,1);
Acelerometer_Xaxis = escape (:,5);
Acelerometer_Yaxis = escape (:,6);
Acelerometer_Zaxis = escape (:,7);
%means = mean(Acelerometer_Xaxis,2);
%vars = var(Acelerometer_Xaxis);
%stds = std(Acelerometer_Xaxis);
subplot (2,2,1);
% figure
plot(Time, Acelerometer_Xaxis,'k');
title ('Raw Data Escape Activity in x-direction');
xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (2,2,2);
plot(Time,Acelerometer_Yaxis,'r')
title ('Raw Data Escape Activity in y-direction');
xlabel('Time (Second)');
ylabel ('Acceleration (g)');
%axis tight
%hold on
% figure
subplot (2,2,3);
plot(Time,Acelerometer_Zaxis,'b')
%axis tight
title ('Raw Data Escape Activity z-direction');
xlabel('Time (Second)');
ylabel ('Acceleration (g)');
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


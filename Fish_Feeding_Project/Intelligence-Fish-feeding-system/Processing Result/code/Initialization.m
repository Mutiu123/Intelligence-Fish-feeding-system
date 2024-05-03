load firstData.mat

eMA = sqrt(eAccelerometer(:,1).^2 + eAccelerometer(:,2).^2 + ...
            eAccelerometer(:,3).^2);
fMA = sqrt(fAccelerometer(:,1).^2 + fAccelerometer(:,2).^2 + ...
            fAccelerometer(:,3).^2);

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

figure
plot(Ay(:,1))
hold on
plot(Ay(:,2), 'r')
title('Mangitude of the y-axis swing of Accelerometer')
legend('Escape', 'Feeding')

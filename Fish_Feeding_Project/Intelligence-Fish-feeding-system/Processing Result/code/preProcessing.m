function [ maxAx,meanAy,maxGz,rangeAxAy,meanRange ] = preProcessing( eAccelerometer,...
                                  fAccelerometer,eGyroscope,fGyroscope)


Ax = [eAccelerometer(:,1) fAccelerometer(:,1)];
Ay = [eAccelerometer(:,2) fAccelerometer(:,2)];
Az = [eAccelerometer(:,3) fAccelerometer(:,3)];

Gz = [eGyroscope(:,3) fGyroscope(:,3)];

diffAxAy = Ax - Ay;
diffAyAz = Ay - Az;

maxDiffAxAy = max(diffAxAy);    maxDiffAyAz = max(diffAyAz);
minDiffAxAy = min(diffAxAy);    minDiffAyAz = min(diffAyAz);

rangeAyAz = maxDiffAyAz - minDiffAyAz;

% Output
maxAx = max(Ax);
meanAy = mean(Ay);
maxGz = max(Gz);
rangeAxAy = maxDiffAxAy - minDiffAxAy;
meanRange = mean(rangeAyAz);



end


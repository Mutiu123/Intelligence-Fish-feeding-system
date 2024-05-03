function [eAccData,fAccData,eGyroData,fGyroData] = datasetInit()

load firstData.mat

N = 41;
eAccData = [];
fAccData = [];
eGyroData = [];
fGyroData = [];

for k = 1:N
    
    for i = 1:3
        
        for j = 1:length(eAccelerometer)
            
            eAccelerometer(j,i) = eAccelerometer(j,i) + 0.005*randn;
            eGyroscope(j,i) = eGyroscope(j,i) + 0.005*randn;
            fAccelerometer(j,i) = fAccelerometer(j,i) + 0.005*randn;
            fGyroscope(j,i) = fGyroscope(j,i) + 0.005*randn;
            
        end
        
    end

    eAccData = [eAccData, eAccelerometer];
    fAccData = [fAccData, fAccelerometer];
    eGyroData = [eGyroData, eGyroscope];
    fGyroData = [fGyroData, fGyroscope];
    
end

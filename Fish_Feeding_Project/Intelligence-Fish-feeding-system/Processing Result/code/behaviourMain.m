[eAccData,fAccData,eGyroData,fGyroData] = datasetInit();

[~,col] = size(eAccData);
nAxis = 3;

maxAxData = []; meanAyData = []; maxGzData = []; rangeAxAyData = [];
meanRangeData = [];

for i = 1:nAxis:col - nAxis
%   Data Preprocessing and Feature Extraction  
   [maxAx,meanAy,maxGz,rangeAxAy,meanRange] = preProcessing(eAccData(:,i:nAxis+i),...
       fAccData(:,i:nAxis+i),eGyroData(:,i:nAxis+i),fGyroData(:,i:nAxis+i));
%     Combining the extracted features
   maxAxData = [maxAxData; maxAx];  meanAyData = [meanAyData; meanAy];
   maxGzData = [maxGzData; maxGz];  rangeAxAyData = [rangeAxAyData; rangeAxAy];
   meanRangeData = [meanRangeData; meanRange];
      
end
% Format the input to the Neural network
combinedInput = [maxAxData(:), meanAyData(:), maxGzData(:), ... 
                    rangeAxAyData(:)];

input = Normalize(combinedInput,'z-score');
input = input';
target = zeros(1,length(input));
target(1,1:length(input)/2) = 1;











% % PLOTS
% plot(maxAxData(:,1))
% hold on
% plot(maxAxData(:,2),'r')
% title('Maximum x-axis swing of the fish')
% legend('Escape', 'Feeding')
% 
% figure
% plot(meanAyData(:,1))
% hold on
% plot(meanAyData(:,2),'r')
% title('Average y-axis movement of the fish')
% legend('Escape', 'Feeding')
% 
% figure
% plot(maxGzData(:,1))
% hold on
% plot(maxGzData(:,2),'r')
% title('Maximum Z-axis swing')
% legend('Escape', 'Feeding')
% 
% figure
% plot(rangeAxAyData(:,1))
% hold on
% plot(rangeAxAyData(:,2),'r')
% title('Range of the difference between x- and y-axis')
% legend('Escape', 'Feeding')

function [ normalizedData ] = Normalize( data,type )


[row,col] = size(data);
normalizedData = zeros(row,col);

if strcmp(type,'min-max')
    %% Min-Max Normalization
for i = 1:col
   
    xmin = min(data(:,i));
    xmax = max(data(:,i));
    dist = xmax - xmin;
    normalizedData(:,i) = (data(:,i) - xmin)/dist;
    
end

    
elseif strcmp(type, 'z-score') 
    %% Z-Score Normalization

for i = 1:col
    
   colMean = mean(data(:,i));
   colStd = std(data(:,i));
   normalizedData(:,i) = (data(:,i) - colMean)/colStd;
    
end
    
end


end


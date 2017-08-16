function meanArray = findMean( data )
sumArray = zeros(1,length(data(:,1)));
meanArray = zeros(1,length(data(:,1)));
outArray = zeros(1);
for i= 1 : length(data(:,1))
    sumArray(i) = sum(data(i,:));
    meanArray(i) = ceil(sumArray(i)/length(data(1,:)));
        if meanArray(i)>750
        outArray(i)=meanArray(i);
        k=find(outArray);
        end
end
fprintf('this indexes are outliers: %d \n',k);
x = 1:length(data(:,1));
[TF,lower,upper,center] = isoutlier(meanArray);
plot(x,meanArray,x(TF),meanArray(TF),'x',x,lower*ones(1,length(data(:,1))),x,upper*ones(1,length(data(:,1))),x,center*ones(1,length(data(:,1))))
legend('Original Data','Outlier','Lower Threshold','Upper Threshold','Center Value')

end


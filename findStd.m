function stdArray = findStd(data)
stdArray =zeros(1,length(data(:,1)));

for i=1:length(data(:,1))
    stdArray(i)=ceil(std(data(i,:)));
end

x = 1:length(data(:,1));
[TF,lower,upper,center] = isoutlier(stdArray);
plot(x,stdArray,x(TF),stdArray(TF),'x',x,lower*ones(1,length(data(:,1))),x,upper*ones(1,length(data(:,1))),x,center*ones(1,length(data(:,1))))
legend('Original Data','Outlier','Lower Threshold','Upper Threshold','Center Value')
clear all;
clc
end
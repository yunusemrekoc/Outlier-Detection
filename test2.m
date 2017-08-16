function meanArray = test2( data )
fontSize = 30;
sumArray = zeros(1,length(data(:,1)));
meanArray = zeros(1,length(data(:,1)));
for i= 1 : length(data(:,1))
    sumArray(i) = sum(data(i,:));
    meanArray(i) = ceil(sumArray(i)/length(data(1,:)));
end
meanValue = mean(meanArray);
absoluteDeviation = abs(meanArray - meanValue);
mad = median(absoluteDeviation);
sensitivityFactor = 5;
thresholdValue = sensitivityFactor * mad;
outliers = meanArray(outlierIndexes);

subplot(2, 1, 1);
bar(meanArray);
hold on;
line(xlim, [meanValue, meanValue], 'Color', 'r', 'LineWidth', 2);
grid on;
title('Original Data', 'FontSize', fontSize);
message = sprintf('Mean Value = %.2f', meanValue);
text(3, 150, message, 'FontSize', 18, 'Color', 'r');
subplot(2, 1, 2);
bar(absoluteDeviation);
grid on;
title('Absolute Deviations', 'FontSize', fontSize);
line(xlim, [mad, mad], 'Color', 'r', 'LineWidth', 2);
message = sprintf('MAD Value = %.2f', mad);
text(3, 50, message, 'FontSize', 18, 'Color', 'r');
line(xlim, [thresholdValue, thresholdValue], 'Color', 'r', 'LineWidth', 2);
message = sprintf('Outlier Threshold Value = %.2f', thresholdValue);
text(3, 200, message, 'FontSize', 18, 'Color', 'r');
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
set(gcf, 'Toolbar', 'none', 'Menu', 'none');
set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off') 
end
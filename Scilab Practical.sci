// Load the dataset
clc;
clear;

// Read CSV file
dataset = csvRead("C:\Users\Deepak\Desktop\New folder (2)\Scilab\amazon.csv", ",");

// Extract relevant columns
dates = dataset(2:$,1);  // Skipping header
open_prices = dataset(2:$,2);
high_prices = dataset(2:$,3);
low_prices = dataset(2:$,4);
close_prices = dataset(2:$,5);
volume = dataset(2:$,7);

// Convert dates to numerical indices for training
x = (1:length(dates))';
y = close_prices;

// Train a linear regression model
X = [ones(length(x),1) x]; // Adding bias term
theta = inv(X'*X) * X' * y;

// Make predictions
y_pred = X * theta;

// Plot actual vs predicted prices
scf(0);
plot(x, y, 'b', 'LineWidth', 2);

plot(x, y_pred, 'r', 'LineWidth', 2);

legend(['Actual Close Price', 'Predicted Close Price']);
xlabel('Days');
ylabel('Stock Price');
title('Amazon Stock Price Prediction using Linear Regression');

// Plot stock volume trends
scf(1);
plot(x, volume, 'g', 'LineWidth', 2);
xlabel('Days');
ylabel('Volume');
title('Amazon Stock Trading Volume Over Time');

// Plot Open vs Close Prices
scf(2);
plot(x, open_prices, 'm', 'LineWidth', 2);
plot(x, close_prices, 'c', 'LineWidth', 2);
legend(['Open Price', 'Close Price']);
xlabel('Days');
ylabel('Price');
title('Amazon Open vs Close Prices');

// Plot High vs Low Prices
scf(3);
plot(x, high_prices, 'r', 'LineWidth', 2);

plot(x, low_prices, 'b', 'LineWidth', 2);
legend(['High Price', 'Low Price']);
xlabel('Days');
ylabel('Price');
title('Amazon High vs Low Prices');

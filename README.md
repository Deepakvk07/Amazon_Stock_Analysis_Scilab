📊 Project Overview: Amazon Stock Price Analysis in Scilab
I perform data analysis and visualization on Amazon stock data using Scilab. It reads historical stock prices from a CSV file and uses Linear Regression to predict the closing price, while also generating multiple plots to understand various aspects of stock behavior.

🔍 Features & Functionality
✅ Data Handling
Reads a CSV file containing Amazon stock data.

Extracts columns like:
Open
High
Low
Close
Volume

✅ Analysis
Linear Regression Model:

Trained using stock closing prices over time.
Predicts future closing prices.
Numerical Indexing:
Dates are converted to numerical indices to simplify training.

✅ Visualizations
Generates the following plots:
Actual vs Predicted Close Price
Stock Trading Volume Over Time
Open vs Close Prices
High vs Low Prices
All plots include legends, axis labels, and titles for clarity.

📁 File Requirements
CSV File: Ensure the file path in your script points to the correct dataset.
dataset = csvRead("C:\\Users\\Deepak\\Desktop\\New folder (2)\\Scilab\\amazon.csv", ",");
You may need to update the path for other users or use a relative path for portability.

🧪 How to Run
Open Scilab.

Load your script:
exec('Scilab Practical.sci', -1);
Ensure the dataset file is available at the specified location.


📂 File List
Scilab Practical.sci – Scilab script for analysis and plotting.
amazon.csv – CSV file used in this analysis 

👨‍💻 Author
[Deepak Vishwakarma]
Student | Data Enthusiast | Scilab Learner
📫 [LINKED IN - https://www.linkedin.com/in/deepak-vishwakarma-14a66428a/]


# Cybersecurity Threats Analysis (2015-2024)

## Overview
This repository contains an analysis of global cybersecurity threats from 2015 to 2024. Using a dataset from Kaggle, this project focuses on exploring and cleaning the data to understand trends in cybersecurity threats, including the types of attacks, industries targeted, financial losses, and the time to resolve incidents. The project aims to provide insights into the patterns and vulnerabilities in cybersecurity over the years.

## Dataset
The dataset used for this analysis is the **Global Cybersecurity Threats (2015-2024)**, which can be found on Kaggle [here](https://www.kaggle.com/datasets/atharvasoundankar/global-cybersecurity-threats-2015-2024).

### Data Columns:
- **Country**: The country where the attack occurred.
- **Year**: The year in which the attack took place.
- **Attack_Type**: The type of cybersecurity attack (e.g., Phishing, Ransomware, DDoS).
- **Target_Industry**: The industry targeted by the attack (e.g., Education, IT, Retail).
- **Financial_Loss (in Million $)**: The financial loss in millions of dollars resulting from the attack.
- **Number_of_Affected_Users**: The number of users affected by the attack.
- **Attack_Source**: The source of the attack (e.g., Hacker Group, Insider).
- **Security_Vulnerability_Type**: The type of security vulnerability exploited.
- **Defense_Mechanism_Used**: The defense mechanism employed during the attack.
- **Incident_Resolution_Time (in Hours)**: The time taken to resolve the incident, measured in hours.

## Project Objectives
1. **Data Cleaning**: Clean and preprocess the data by handling missing values, formatting issues, and outliers.
2. **Exploratory Data Analysis (EDA)**: Perform EDA to understand trends and patterns in the data.
3. **Key Insights**:
   - Financial losses by attack type and target industry.
   - Analysis of attack sources and vulnerabilities.
   - Attack trends over the years.
   - Resolution times for different attack types and industries.

## Steps Followed

### 1. Data Cleaning
- Loaded and explored the dataset.
- Handled missing data by removing or imputing values.
- Cleaned column names for consistency and readability.
- Converted necessary columns (e.g., `Year`, `Financial_Loss`) to the appropriate data types.

### 2. Exploratory Data Analysis (EDA)
- Performed analysis of key metrics such as:
  - **Attack Count by Industry**: Analyzed which industries were most frequently attacked.
  - **Attack Type and Financial Loss**: Identified which attack types caused the most financial damage.
  - **Attack Source Analysis**: Examined the origin of attacks, such as hacker groups, insiders, or nation-state actors.
  - **Incident Resolution Time**: Analyzed the resolution time for different attack types and industries.

### 3. Data Visualizations
- Created various **charts and graphs** to visualize the data, including bar charts for attack counts, line graphs for trends over time, and pie charts for attack distribution.

### 4. Git Integration
- Initialized a Git repository for version control.
- Committed and pushed the SQL and analysis files to GitHub.

## Files in This Repository
- **cybersecurity-analysis.sql**: SQL script used for data cleaning and exploratory analysis.
- **README.md**: This file, providing an overview of the project.
- **analysis.ipynb**: Jupyter notebook with additional data analysis and visualizations (optional if you're using notebooks).

## How to Run the Analysis

### Prerequisites
1. **SQL Database**: The analysis assumes the data is stored in a SQL-compatible database (e.g., MySQL, PostgreSQL, SQLite).
2. **Python (Optional)**: If you're using Python for additional analysis or visualization, install the following libraries:
   ```bash
   pip install pandas matplotlib seaborn

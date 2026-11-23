# 🏠 Amsterdam Airbnb Data Analysis

## 📌 Project Overview
This project focuses on analysing Airbnb listings in Amsterdam to understand pricing patterns, neighbourhood trends, room type distribution, host activity, and availability.

The project uses Python for data cleaning and preprocessing, SQL for data querying and analysis, and Power BI for interactive dashboard development.

## 🎯 Project Objectives
- Analyse Airbnb listing prices across different neighbourhoods.
- Identify popular room types and their distribution.
- Explore host activity and listing patterns.
- Examine listing availability and review trends.
- Build an interactive Power BI dashboard to communicate insights.

## 🛠️ Tech Stack
- **Python:** Pandas, NumPy
- **SQL:** PostgreSQL
- **Data Visualization:** Microsoft Power BI
- **Tools:** VS Code, pgAdmin

## 📂 Project Structure

```text
AMSTERDAM_AIRBNB_ANALYSIS/
│
├── dashboard/
│   └── dashboard.pbix
│
├── dataset/
│   ├── listings.csv
│   └── listings_cleaned.csv
│
├── sql/
│   ├── airbnbams.sql
│   └── SQLQUERIES.sql
|
|__images
|
|__airbnb_analysis.py
│
└── README.md
```

## 🔄 Project Workflow

1. **Data Collection:** Obtained the Amsterdam Airbnb listings dataset.
2. **Data Cleaning:** Used Python and Pandas to inspect, clean, and preprocess the dataset.
3. **Database Management:** Created a PostgreSQL table and imported the cleaned dataset.
4. **SQL Analysis:** Used SQL queries to explore pricing, neighbourhoods, room types, hosts, and reviews.
5. **Dashboard Development:** Created an interactive Power BI dashboard to visualise key findings.

## 📊 Power BI Dashboard

The dashboard contains four pages:

### 1. Overview
- Total Listings
- Average Price
- Average Availability
- Average Reviews
- Total Reviews

### 2. Neighbourhood Analysis
- Average listing price by neighbourhood
- Neighbourhood-level comparisons
- Key pricing patterns

### 3. Room Type & Host Analysis
- Room type distribution
- Top 10 hosts
- Average availability by room type

### 4. Interactive Filters
- Neighbourhood slicer
- Room type slicer

## 🐍 Python Analysis
Python was used for:
- Dataset inspection
- Handling missing values
- Removing duplicate records
- Price column cleaning
- Data type conversion
- Exporting the cleaned dataset

## 🗄️ SQL Analysis
PostgreSQL was used to:
- Create the Airbnb listings table
- Analyse average prices
- Compare neighbourhoods
- Explore room types
- Analyse host listings
- Examine review and availability patterns

## 💡 Key Insights
This project explores:
- Differences in average prices across neighbourhoods.
- Distribution of Airbnb room types.
- Hosts with the highest number of listings.
- Differences in availability across room types.
- Patterns in customer reviews.

*Add your actual findings and numerical results here after final verification.*

## 🚀 Future Improvements
- Build predictive models for Airbnb listing prices.
- Perform deeper seasonal and geographical analysis.
- Add more interactive dashboard features.
- Automate data updates and reporting.

## 👩‍💻 Author
**Kanishka Singh**

Skills: Python | SQL | Power BI | Excel | Data Analysis

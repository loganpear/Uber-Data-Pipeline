# 🚗 Uber Data ETL Pipeline
By: Logan Pearson, Guided by: Darshil Parmar
## Overview
This project simulates the role of a Data Engineer by extracting, transforming, and loading (ETL) Uber trip data into a **star schema**. The goal of this project is to optimize the dataset for efficient querying and analysis by transforming raw trip data into multiple dimension tables and a fact table. The process focuses on improving data structure to support efficient analytics.

## Key Steps
The ETL process is divided into three main sections:

### ✅ Section 1: Extract
- **Extract** raw Uber trip data from Google Cloud Storage.
- The raw data contains details like pickup/dropoff times, trip distances, rate codes, and payment types.

### ⚙️ Section 2: Transform
The transformation process involves cleaning and reformatting the raw data into dimension and fact tables.

- **Data Cleaning**:
  - Removed duplicate records.
  - Reset the index for unique trip identifiers.
  
- **Data Transformation**:
  - **Datetime Dimension**: Extracted granular time data such as hour, day, month, year, and weekday.
  - **Passenger Count Dimension**: Organized passenger count values.
  - **Trip Distance Dimension**: Separated trip distance values for easy access.
  - **Rate Code Dimension**: Mapped rate codes to their descriptive names.
  - **Location Dimensions**: Split pickup and dropoff latitude/longitude data into separate dimensions.
  - **Payment Type Dimension**: Mapped payment type IDs to human-readable payment types.
  - **Fact Table**: Stored the core trip data, including foreign keys linking to all dimension tables.

### 📦 Section 3: Load
- Loaded the transformed data into Google BigQuery, a cloud-based data warehouse.
- The data is now organized into a **star schema**, which includes:
  - `datetime_dimension`
  - `passenger_count_dimension`
  - `trip_distance_dimension`
  - `rate_code_dimension`
  - `pickup_location_dimension`
  - `dropoff_location_dimension`
  - `payment_type_dimension`
  - `fact_table`

## Star Schema Design
The star schema is designed to optimize the data for efficient querying and analysis, consisting of the following:

- **Fact Table**: Contains foreign keys to the dimension tables and metrics such as fare amount, tip amount, and total trip revenue.
- **Dimension Tables**: Provide context to the fact table with descriptive data (e.g., time, location, payment methods).

## Technologies Used
- **Python**: For data extraction, transformation, and loading.
- **Google Cloud Storage**: To store the raw Uber data.
- **Google BigQuery**: To store the transformed data in a star schema.
- **Pandas**: For data manipulation during the transformation process.

## Credits
- This project could not have been completed without the guidance of Darshil Parmar: https://github.com/darshilparmar
- Much of my transformaion code is straight from his youtube tutorial here: https://www.youtube.com/watch?v=WpQECq5Hx9g
- Uber dataset:  https://github.com/darshilparmar/uber-etl-pipeline-data-engineering-project/blob/main/data/uber_data.csv

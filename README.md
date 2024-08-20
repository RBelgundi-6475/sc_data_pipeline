# Supply Chain Data Pipeline
## Overview
This project implements a data pipeline that ingests, processes and transforms supply chain data from various sources into actionable insights. The pipeline is built using cloud-native technologies, including AWS, Snowflake, and DBT, and is designed to be scalable, reliable, and easy to manage.
## Architecture
The pipeline architecture is illustrated below:
### Components
1. **Data Sources**: 
    - API Gateway (for real-time data ingestion)
    - Snowflake share (for external data sources)
    - AWS S3 (for file drop into S3)
  
2. **AWS SNS and Lambda**:
    - **SNS Topic**: Publishes notifications for data collection. The S3 bucket file drop event is published to the SNS topic.
    - **Lambda for Data Collection**: Triggers the pipeline based on incoming data events and orchestrates data collection. The second Lambda function invokes the Airflow DAG, which kickstarts the ETL process.
3. **ETL with DBT**:
    - The pipeline follows a layered approach to data transformation:
        - **RAW**: Raw data is ingested and stored in Snowflake.
        - **STAGE**: Intermediate transformations and cleansing happen here.
        - **DW (Data Warehouse)**: Data is structured for analytical purposes. The cleaned dataset is converted to a STAR schema with one fact and many dimension tables.
        - **DM (Data Marts)**: Aggregated data for specific business use cases.
        - **DP (Data Product)**: Final datasets ready for reporting and visualization. The data product(DP) is made accessible to all business users.
4. **Orchestration with Apache Airflow (Managed by MWAA)**:
    - Airflow manages the ETL workflow, triggering DBT jobs as per the defined schedule or event-based triggers.

5. **Data Storage and Processing**:
    - **Snowflake**: Serves as the central data warehouse.

6. **Analytics**:
    - The processed data is consumed by business users through analytics tools and dashboards.

## Technologies Used

- **AWS Services**:
  - Lambda
  - SNS (Simple Notification Service)
  - S3 (Simple Storage Service)
  - API Gateway
  - MWAA (Managed Workflow for Apache Airflow)

- **Data Warehouse**: Snowflake

- **Transformation**: DBT (Data Build Tool)

- **Orchestration**: Apache Airflow (MWAA)

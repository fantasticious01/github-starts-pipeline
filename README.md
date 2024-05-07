# GitHub Gems: Driving Open-Source Investments With Data

Welcome to the GitHub Gems project! This project hosts a data analytics pipeline that enables smarter investment decisions by measuring the popularity of open-source repos on Github.

## Project Overview

The goal of this project is to develop an efficient data pipeline that streamlines analytics, reduces manual effort, and enables deeper insights into the open-source ecosystem on GitHub. By leveraging modern data tools and best practices, such as dbt (data build tool) and Airflow, we aim to create a scalable and reliable solution for data-driven decision-making.

## High-Level Features

### Most Important Metrics and Data Points

- **Growth Rate of Stars:** This metric indicates how quickly the number of stars on a repository is increasing.
- **Growth Rate of Commits:** This metric measures the speed at which new commits are being made to a repository.
- **Custom Analysis:** This allows for the implementation of custom metrics or analysis tailored to specific project requirements.


### Source Data

The project utilizes data from the GH Archive, a third-party source, due to its advantages of simple load logic compared to GitHub's native data. Despite being a third-party source, it offers timely updates, refreshing every hour. We update our data daily to ensure the latest information is utilized. We mitigate the risk associated with third-party data sources by implementing rigorous data quality tests.

### Data Format

The data is delivered in the form of SQL databases.

### Update Frequency

The data is updated daily to maintain up-to-date information for analysis.
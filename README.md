# 🚀 Data Engineering Project — End-to-End

## 📌 Overview

This project demonstrates a complete **end-to-end data engineering pipeline** using Airbnb data and modern cloud data technologies.

The solution covers the entire data lifecycle — from **raw CSV ingestion** to **cloud storage, data warehousing, transformation, and analytics**.

### 🛠️ Technologies Used

- ☁️ **AWS S3** — Cloud object storage
- ❄️ **Snowflake** — Cloud data warehouse
- 🔧 **dbt (Data Build Tool)** — Data transformation and modeling
- 📄 **CSV** — Source data format

---

## 🏗️ Architecture

### 🔄 Data Flow

```text
┌─────────────────┐
│   Source Data   │
│      (CSV)      │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│     AWS S3      │
│  Cloud Storage  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│    Snowflake    │
│     Staging     │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  Bronze Layer   │
│   Raw Tables    │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  Silver Layer   │
│  Cleaned Data   │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│    Gold Layer   │
│    Analytics    │
└─────────────────┘



🧱 Layer Architecture

**Layer	 -----  Purpose**
Source	 -----  Raw Airbnb CSV files
AWS S3	 -----  Stores source files in the cloud
Staging	 -----  Initial ingestion into Snowflake
Bronze	 -----  Raw data with minimal transformation
Silver	 -----  Cleaned, standardized, and transformed data
Gold	  -----  Business-ready analytical datasets




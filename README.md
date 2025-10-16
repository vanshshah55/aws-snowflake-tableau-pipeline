# Cloud Analytics Pipeline: AWS + Snowflake + Tableau

This repository showcases a complete, end-to-end data pipeline project. It demonstrates the process of ingesting raw data from a cloud data lake (AWS S3), loading it into a cloud data warehouse (Snowflake) for transformation, and visualizing the resulting insights in an interactive business intelligence dashboard (Tableau).

---

## 🚀 Project Objective

The primary goal of this project involved building a scalable and automated ELT (Extract, Load, Transform) pipeline using a modern data stack, transforming raw data into actionable business intelligence.

---

## 🏗️ Architecture

The architecture illustrates the flow of data from the initial raw files in S3 to the final interactive dashboard in Tableau.

<img width="512" height="207" alt="Gemini_Generated_Image_5kh7t65kh7t65kh7" src="https://github.com/user-attachments/assets/e25f8b21-9af3-49bc-88f1-3588aa5b247e" />

---

## 🛠️ Tech Stack

* **Cloud Provider:** **Amazon Web Services (AWS)**
* **Data Lake:** **AWS S3** for raw data staging.
* **Data Warehouse:** **Snowflake** for data storage, processing, and transformation.
* **BI & Visualization:** **Tableau** for creating interactive dashboards.
* **Core Language:** **SQL**

---

#### 📊 Preview:

<img width="1280" height="657" alt="image" src="https://github.com/user-attachments/assets/3b28b1fd-4500-402a-85a5-20793ffc4dc2" />

<img width="1606" height="1008" alt="image" src="https://github.com/user-attachments/assets/6ed2d01f-ea2e-47cd-98af-b5eca041438e" />

---

## 📖 Project Walkthrough

### 1. Data Ingestion & Staging (AWS S3)
* Raw data in CSV format was uploaded to a dedicated AWS S3 bucket, which serves as the data lake.
* A secure **IAM Role** was established in AWS with a trust policy granting Snowflake permission to access the S3 bucket without exposing credentials.

### 2. Secure Cloud Integration (Snowflake)
* A `STORAGE INTEGRATION` object was created in Snowflake to connect securely to the S3 bucket using the pre-configured IAM Role.
* An **external stage** was defined in Snowflake, pointing to the S3 bucket location where the raw data resides.

### 3. Data Loading & Warehousing (Snowflake)
* A raw data table was created to store the ingested data from AWS S3.

### 4. Data Transformation (Snowflake SQL)
* A new, cleaned analytics table was created.
* Using SQL, the raw data was transformed into an analytics-ready format.

### 5. Data Visualization (Tableau)
* Tableau Desktop was connected directly to the final transformed table in Snowflake.

---

## 💡 Key Takeaways & Learnings

* **Importance of Secure Integration:** Learned the critical steps of setting up IAM roles and trust policies, which is fundamental for secure cloud data pipelines.
* **Power of ELT:** Experienced the efficiency of the ELT (Extract, Load, Transform) paradigm. Loading raw data to S3 and then into Snowflake first and then using its powerful engine for transformations is significantly more scalable than traditional ETL.

---

## 🔮 Future Enhancements

* **1. Automation with Snowpipe** 
* **2. Scheduled Transformations:** **Snowflake Tasks** could be implemented to run the SQL transformation scripts on a schedule, creating a fully automated and unattended pipeline.
* **Integrate dbt (Data Build Tool):** For more complex logic, dbt could be used to manage, test, and document the data transformation models, promoting code reusability and reliability.



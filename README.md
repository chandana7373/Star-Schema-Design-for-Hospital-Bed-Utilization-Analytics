# Star-Schema-Design-for-Hospital-Bed-Utilization-Analytics
Built a MySQL star schema data model to analyze ICU and SICU bed capacity across hospitals and deliver leadership-ready rankings and pilot site recommendations.

# 🏥 Hospital ICU & SICU Bed Capacity Analytics  
### Star Schema Design & Leadership Decision Support using MySQL

---

## 📌 Project Overview
This project applies **dimensional modeling** and **SQL analytics** to evaluate **hospital ICU and SICU bed capacity** for leadership decision-making. A **Star Schema** was designed in **MySQL Workbench** to organize healthcare bed data into **fact and dimension tables**, enabling efficient querying and executive-level reporting.

The analysis identifies hospitals with **Intensive Care Unit (ICU)** and **Surgical Intensive Care Unit (SICU)** beds and ranks them based on **licensed, census, and staffed bed volumes** to support selection of **pilot intervention sites**.

---

## 🎯 Business Problem
Healthcare leadership required a data-driven approach to:
- Identify hospitals with ICU beds, SICU beds, or both
- Compare hospitals by operational bed capacity
- Narrow down to **1–2 hospitals** best suited for a pilot intervention program
- Ensure recommendations are based on **consistent volume across multiple metrics**

---

## 🧩 Data Model (Star Schema)
A **Star Schema** was implemented to support analytical querying:

### 🔹 Dimension Tables
- **Bed Type Dimension**  
  Identifies bed categories such as ICU and SICU
- **Hospital (Business) Dimension**  
  Contains hospital identifiers and descriptive attributes
- **Supporting Dimensions**  
  Includes primary keys and descriptive fields used for slicing and filtering

### 🔹 Fact Table
- **Bed Fact Table**
- Contains quantitative measures:
  - Licensed bed count
  - Census bed count
  - Staffed bed count
- Foreign keys connect each record to the appropriate dimension tables

---

## 🛠️ Technical Implementation
- Created a new schema in **MySQL Workbench**
- Imported raw `.csv` files as database tables
- Identified **fact vs. dimension variables** using data warehousing principles
- Defined **primary keys and foreign keys** using:
  - `ALTER TABLE` SQL commands
  - MySQL Workbench table editor
- Used **Reverse Engineering Wizard** to generate a **Star Schema ERD**
- Exported the ERD as a `.png` for documentation

---

## 📊 Analysis & Queries

### 1️⃣ Leadership Summary Analysis
Hospitals were evaluated for:
- **ICU beds (bed_id = 4)**
- **SICU beds (bed_id = 15)**

Three executive summary reports were produced:

#### 🔹 Top 10 Hospitals by Licensed Beds
- Hospital name
- Total ICU + SICU licensed beds

#### 🔹 Top 10 Hospitals by Census Beds
- Hospital name
- Total ICU + SICU census beds

#### 🔹 Top 10 Hospitals by Staffed Beds
- Hospital name
- Total ICU + SICU staffed beds

Each report was sorted in **descending order** and limited to **10 hospitals**.

---

### 2️⃣ Drill-Down Investigation
To refine the leadership recommendation:
- Filtered hospitals to include **only those with BOTH ICU and SICU beds**
- Repeated the Top 10 analysis for:
  - Licensed beds
  - Census beds
  - Staffed beds

This ensured selected hospitals had **comprehensive critical care capacity**, not just a single bed type.

---

## 🧠 Key Insights
- Certain hospitals consistently ranked high across **multiple capacity metrics**
- Hospitals appearing on **more than one Top 10 list** demonstrated stronger operational readiness
- These hospitals present strong candidates for a **pilot intervention program**

---

## ✅ Final Recommendation
Based on both the leadership summary analysis and the drill-down investigation, **1–2 hospitals** were recommended as pilot sites. These hospitals:
- Maintain **both ICU and SICU capacity**
- Demonstrate **high and consistent bed volume**
- Align closely with leadership’s intervention and scalability goals

---

## 🧰 Tools & Technologies
- **MySQL**
- **MySQL Workbench**
- SQL (DDL, DML, Aggregations, JOINs)
- Dimensional Modeling (Star Schema)
- ERD & Reverse Engineering
- Healthcare Analytics

---

## 📁 Repository Structure

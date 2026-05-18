# Customer Churn Analysis

## Project Overview
This project analyzes customer churn to identify high-risk segments, quantify revenue at risk, and understand the main reasons customers leave.

The analysis was performed using SQL, Python, and Power BI.

---

## Business Problem
Customer churn reduces recurring revenue and increases acquisition costs. The objective was to:

- Calculate churn KPIs
- Identify high-risk customer segments
- Analyze churn reasons
- Recommend retention strategies

---

## Tools Used
- SQL
- Python (Pandas, Matplotlib, Seaborn)
- Power BI

---

## Key Insights

- Total Customers: 5,000
- Churned Customers: 1,322
- Churn Rate: 26.44%
- Revenue at Risk: $93.93K/month
- High-Risk Segment: Month-to-month + Electronic Check
- Segment Churn Rate: 49.79%
- Revenue at Risk in High-Risk Segment: $32.53K/month
- Top Churn Reason: Poor Service Experience (33% of churn)

---

## Business Recommendations

### 1. Improve Service Quality (High Priority)
Poor Service Experience accounts for 33% of total churn.
**Expected Impact:** Addressing this issue can significantly reduce customer attrition and improve satisfaction.

### 2. Target High-Risk Customers (High Priority)
Customers on month-to-month contracts paying by electronic check show a 49.8% churn rate.
**Expected Impact:** Focused retention campaigns can protect approximately $32.5K in monthly revenue.
**Revenue at risk**: $32.5K/month
**Assumed churn reduction**: 20%
**Potential savings**: $32,534 × 20% = $6,507 per month.

### 3. Promote Long-Term Contracts (Medium Priority)
Month-to-month customers churn more frequently than annual contract customers.
**Expected Impact:** Longer contracts increase retention and revenue stability.

### 4. Encourage AutoPay Adoption (Medium Priority)
Electronic check users exhibit higher churn rates.
**Expected Impact:** Automatic payments reduce friction and improve customer stickiness.

### 5. Enhance Customer Support (Medium Priority)
Churned customers tend to raise more support tickets.
**Expected Impact:** Faster issue resolution can improve customer satisfaction and loyalty.

### 6. Implement Satisfaction Monitoring (Low Priority)
Customers with lower satisfaction scores are more likely to churn.
**Expected Impact:** Early intervention can reduce future churn.

---

## Project Structure

```text
README.md
customer-churn-analysis/
├── data/
├── sql/
├── notebooks/
├── powerbi/
├── images/
└── requirements.txt
```

## Automated Executive Summary

A custom Python function (`generate_executive_summary()`) automatically generates executive-ready insights by summarizing:

- Total, churned, and retained customers
- Churn and retention rates
- Monthly revenue at risk
- Tenure and satisfaction comparisons
- Support ticket and late payment behavior
- High-risk contract and payment segments
- Top churn reasons

### Output Formats
- Text
- Markdown
- Dictionary (for programmatic use)

This automation reduces manual reporting effort and demonstrates AI-driven analytics and business storytelling capabilities.

---
## Dashboard Preview

![Customer Churn Dashboard](https://raw.githubusercontent.com/M-1231/Customer_churn_analaysis/main/Customer_churn_analysis/images/Dashboard.png)

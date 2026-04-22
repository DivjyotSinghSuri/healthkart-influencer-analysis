# Influencer Campaign Performance Analysis

This project analyzes influencer marketing performance using SQL and visualizes insights through a Tableau dashboard.

## Objective
Evaluate campaign efficiency using ROAS (Return on Ad Spend) and identify high-performing influencers, platforms, and product segments.

## Tech Stack
- SQL (Databricks)
- Tableau (Dashboard)
- Data Modeling (fact + dimension approach)

## Key Insights
- Top influencers deliver ROAS between ~2.0–2.85, while the lowest performers fall below ~0.75, showing a 3–4x gap in efficiency.
- Overall ROAS is ~1.19, indicating campaigns are only marginally profitable and can be optimized further.
- Micro influencers achieve ~1.91 ROAS vs ~1.05 for macro influencers, making them significantly more efficient despite lower reach.
- Instagram campaigns show ~1.76 ROAS compared to ~1.16 on YouTube, suggesting better conversion efficiency on Instagram.
- Categories like Nutrition and Wellness reach ~2.0+ ROAS, while others are closer to ~1.2, highlighting clear differences in product performance.

## Dashboard
![Dashboard](assets/Influencer_Performance_Dashboard.png)

## 🧱 Data Model

The project follows a simple analytics modeling approach with a central fact table.

- **FACT_CAMPAIGN** → Aggregated performance metrics  
- **INFLUENCERS** → Influencer attributes (category, followers, platform)  
- **TRACKING_DATA** → Raw campaign performance data  
- **PAYOUTS** → Cost layer (influencer payouts)  
- **POSTS** → Engagement data (likes, comments)

![Data Model](assets/Healthkart%20Data%20Model.png)

## Project Structure
- `data_modeling.sql` → table creation and data modeling
- `analysis.ipynb` → queries, outputs, and insights
- `final_dataset.csv` → dataset used for dashboard

## Outcome
Provides actionable insights on where to allocate marketing budget for maximum ROI.

## Live Dashboard
[View on Tableau Public](https://public.tableau.com/app/profile/divjyot.singh.suri/viz/HealthKartInfluencerPerformanceDashboard/Dashboard1)

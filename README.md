# Wonka Candy Sales — SQL & Tableau Portfolio Project

This repository contains my end‑to‑end analysis of a mock **Wonka Candy** dataset using **PostgreSQL** (via pgAdmin4) and **Tableau Public**. It includes the SQL I wrote, links to live dashboards, and the written report PDF.

> **What you’ll find here**
> - `/sql`: productionized queries by section
> - `/dashboards`: links and notes for each Tableau viz
> - `/docs`: the full written report (PDF) and any supporting docs
> - `/images`: screenshots/GIFs for the README (add yours here)

---

## Live Dashboards (Tableau Public)

- Executive Summary — https://public.tableau.com/views/WonkaProject-ExecutiveSummary/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- Annual Division Performance Review — https://public.tableau.com/views/WonkaProject-AnnualDivisionPerformanceReview/Dashboard3?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- Product Seasonality & Performance — https://public.tableau.com/views/WonkaProject-ProductSeasonalityPerformance/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- Regional Product Performance Explorer — https://public.tableau.com/views/WonkaProject-RegionalProductPerformanceExplorer/Dashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- High‑Value Transaction Analysis by State — https://public.tableau.com/views/WonkaProject-HighValueTransactionAnalysisbyState/Dashboard3?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- Customer Segmentation — https://public.tableau.com/views/WonkaProject-CustomerSegmentation/Dashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- Product Profitability — https://public.tableau.com/views/WonkaProject-ProductProfitability/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- 2021 Non‑core Product Sales Explorer — https://public.tableau.com/views/WonkaProject-2021Non-coreProductSalesExplorer/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

> Tip: in Tableau, use the full‑screen icon (bottom‑right) for a clean view.

---

## Project Overview

- **Goal:** demonstrate beginner→intermediate SQL + Tableau by building a multi‑section analysis and turning it into a portfolio‑ready story.
- **Data:** Maven Analytics — US Candy Distributor (https://mavenanalytics.io/data-playground/us-candy-distributor).
- **Stack:** PostgreSQL/pgAdmin4 · Tableau Public · Google Sheets/Excel for light checks.

See `/docs/Wonka_Candy_Sales_Performance_Analysis.pdf` for the full write‑up with findings, recommendations, and screenshots.

---

## How to use the SQL

1. Load the Maven datasets into a Postgres database (table names used below: `wonka_sales`, `division_targets`, `product_pricing`).
2. Run any query from `/sql` directly. Each file includes comments and matches a dashboard section.
3. Export results to CSV if you want to recreate the Tableau dashboards from scratch.

> **Note:** I do not redistribute the raw dataset here. Grab it from Maven and import locally.

---

## Repo Structure

```
.
├── sql/                      # All queries by section
├── dashboards/               # Notes + links to each Tableau viz
├── docs/                     # Report and supporting docs
├── images/                   # Add screenshots/GIFs for the README
├── .gitignore
├── LICENSE
└── README.md
```

---

## Highlights

- Executive summary (Section 0) 
- Division target tracking and variance analysis (Section 1)
- Seasonality patterns by product (Section 2)
- Regional product performance and concentration risk (Section 3)
- State‑level high‑value transactions (Section 4)
- Customer segmentation by lifetime value and touchpoints (Section 5)
- Product profitability and margin buckets (Section 6)
- 2021 non‑core product explorer (Section 7)

---

## License

MIT — see `LICENSE` for details.

---

## Credits

- Data: © Maven Analytics (mock dataset for training/portfolio use).
- Tools: PostgreSQL/pgAdmin4, Tableau Public.

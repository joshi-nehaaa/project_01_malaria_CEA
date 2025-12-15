# Project 01: Malaria ITN Cost-Effectiveness (Nigeria)
Objective: 
To evaluate the cost-effectiveness of Insecticide-Treated Net (ITN) distribution in Nigeria by analyzing household ITN ownership, usage among children under 5, and malaria burden across the six geopolitical zones.

Key Findings: 
Average Cost per DALY Averted ≈ $3098	- Highly cost-effective
Average Cost per Case Averted	≈ $62 -	Low relative to treatment cost
Total DALYs Averted ≈ 27,520 - Substantial health impact
Most Cost-Effective Zone: North West - High usage and low distribution costs
Average Usage Gap	≈ 17.6%	- Behavioral non-use remains significant

Repo Map: 
project_01_malaria_CEA/
│
├── analysis/
│   ├── impacts_model_2021.xlsx
│   ├── load_data.R
│   ├── zone_itn_metrics_costed.xlsx
│   └── zone_itn_metrics_validated.xlsx
│
├── data_clean/
│   ├── zone_itn_verified.csv
│   └── zone_itn_verified.rds
│
├── data_raw/
│   ├── Nigeria_MIS_2021_Report.pdf
│   └── zone_itn_data.xlsx
│
├── documentation/
│   ├── README_Step1_DataPrep.txt
│   ├── README_Step2_DataCompilation_Validation.txt
│   ├── README_Step3_ImpactModelling.txt
│   ├── README_Step4_Interpretation.txt
│   └── README_Step5_VisualDashboard.txt
│
├── outputs/
│   ├── chart_cost_per_case_vs_usage_gap.jpeg
│   ├── chart_cost_per_DALY_by_zone.jpeg
│   ├── chart_itn_additional_children.jpeg
│   ├── chart_itn_ownership_vs_usage.jpeg
│   ├── chart_itn_scatter_ownership_usage.jpeg
│   ├── dashboard_2021.pdf
│   ├── executive_summary_2021.pdf
│   ├── plot_itn_gap_zone.jpeg
│   ├── plot_itn_usage_by_zone.jpeg
│   └── project_summary_case_brief.pdf


Step 1: Data Preparation & Exploration (NMIS 2021 - Nigeria)

Objective:
	Prepare and verify data for a national-level analysis of Insecticide Treated Nets (ITN) ownership and usage among children under 5 in Nigeria
	
Data Source: 
	Nigeria Malarisa Indicator Survey 2021 (NMIS 2021), Demographic and Health Surveys (DHS) Program
	The report was downloaded and thereafter, zone-wise data on ITN ownership and usage was extracted manually from the report tables

Steps:
	1. Raw data set was created using Excel with 6 geopolitical zones of Nigeria: zone_itn_data.xlsx
	2. This was imported into R via: load_data.R
	3. The structure was verified, data types were converted and the usage gap was computed (usage_gap_pct)
	4. Visualisation was carried out for: ITN usage for children <5, ownership-usage gap
	5. The dataset and final plots were exported and saved for documentation
	
Key Findings: 
	Generally, ITN ownership are higher (42 - 76%)
	ITN usage among children under 5 range between 22 - 55% across zones
	Average ownership-usage gap is 17%
	Northern zones displayed higher usage as compared to southern zones

Outputs Created: 
	data_clean/zone_itn_verified.rds
	data_clean/zone_itn_verified.csv  
	outputs/plot_itn_usage_by_zone.png 
	outputs/plot_itn_gap_by_zone.png

Next Step:
	Define outcome metrics and cost-effectiveness 
	
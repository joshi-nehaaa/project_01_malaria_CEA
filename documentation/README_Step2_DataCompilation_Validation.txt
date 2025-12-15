Step 2: Data Compilation, Visualisation & Validation (NMIS 2021 - Nigeria)

Objective:
	Compile, contextualise, visualise and validate zone-level ITN data from NMIS 2021 for subsequest cost-effectiveness analysis.
	Integrate quantitative, qualitative and cost information into a single structured dataset.

Data Source:
	Nigeria Malarisa Indicator Survey 2021 (NMIS 2021), Demographic and Health Surveys (DHS) Program: zone-level ITN ownership/usage, non-use reasons (Table 3.8.1)
	UN World Population Prospects 2021 (UN WPP 2021): national under 5 population (31 million) used to derive zone-wise under 5 (U5) estimates. 
	PMI Nigeria 2021; WHO World Malaria Report 2023: long-lasting insecticidal net (LLIN) unit cost $5.5 per net
	
Steps: 
	1. Data Compilation:
		Derived U5 population per zone using UN WPP data
		Computed: Children Protected, Children Potentially Protected, Additional Children if Gap Closed
	2. Visualisation: 
		Created 3 charts as part of data visualisation as follows:
			Chart 1 (clustered bar): ITN ownership vs usage by zone
			Chart 2 (horizontal bar): Estimated children protected vs potentially protected (million).
			Chart 3 (scatter plot): Ownership vs usage with trendline (showing gap pattern).
		Exported for documentation
	2. Qualitative: 
		Added reasons for non-use of ITNs (not needed, old/torn, etc)
		Flagged data confidence
	3. Validation:
		Checked logical relationships using conditional formatting (usage ≤ ownership, potential ≥ protected)
		Checked all percentages to be between 0-100 using spot checks and conditional formatting
		Created national weighted totals to match NMIS 2021 benchmarks
	4. Cost Integration:
		Added LLIN unit cost, nets per person
		Computed: Estimated Cost to Deliver per Net, Estimated Total Cost, Cost per Additional Child Protected (primary cost-effectiveness indicator)
	5. Summary & Formatting:
		Updated executive summary table
		Formatted the validated dataset for modelling

Key Findings:
	ITN ownership 53 % (national weighted) vs. usage 36 % → gap ≈ 18 pp.
	Southern zones show higher behavioural non-use (“too hot,” “not needed”).
	Northern zones show lower non-use but issues with net quality and replacement.
	Estimated national LLIN coverage cost ≈ USD 80–90 million.
	Cost per additional child protected ≈ USD 4–8 across zones.

Outputs Created: 
	analysis/zone_itn_metrics_validated.xlsx
		Sheets: zone_summary_table_2021, zone_visuals_2021, zone_metrics_2021
	outputs/chart_itn_ownership_usage_by_zone.jpeg
	outputs/chart_children_protection_by_zone.jpeg
	outputs/chart_scatter_ownership_usage.jpeg

Next Step:
	Impact & Cost-Effectiveness Modelling


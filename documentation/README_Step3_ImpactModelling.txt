Step 3: Impact & Cost-Effectiveness Model (NMIS 2021 - Nigeria)

Objective:
	Translate ITN coverage and cost data into measurable health outcomes (cases averted, DALYs averted) and cost-effectiveness indicators.

Data Source:
	WHO WMR 2023 (Nigeria Profile): infection rate for unprotected under 5 (0.25 cases/child/year)
	Lengeler 2004, Cochrane Review: ITN protective efficacy (50% or 0.50)
	GBD 2021 (IHME): DALYs per malaria case (0.02 DALY)
	PMI 2021 Nigeria Report: LLIN unit cost ($5.5)

Steps:
	1. Created new sheet for modeling and referencing validated data: impact_model_2021
	2. Applied data assumptions for health and cost ratios
	3. Computed:
		Cases Averted = Children Protected × Infection Rate × Efficacy
		DALYs Averted = Cases Averted × DALY per Case
		Cost per Case Averted = Total Cost / Cases Averted
		Cost per DALY Averted = Total Cost / DALYs Averted
	4. Ranked zones based on Cost per DALY Averted
	5. Visualised data (sheet: impact_visuals_2021) & exported visuals
		Chart 1 (bar chart): Cost per DALY Averted by Zone
		Chart 2 (scatter plot): Cost per Case Averted vs ITN Usage Gap

Key Findings:
	ITN impact strongest in Northern zones with high usage and coverage.
	Average cost ≈ $16 per additional child protected.
	Cost per DALY Averted ranges ≈ $2015 - $4995 across zones
	Overall national investment (≈ USD 85 M) could avert ≈ 13M cases and ≈ 27k DALYs annually.

Outputs Created: 
	analysis/impact_model_2021.xlsx
		sheets: impact_model_2021, impact_visuals_2021
	outputs/chart_cost_per_DALY_by_zone.jpeg
	outputs/chart_cost_per_case_vs_usage_gap.jpeg
	
Next Step:
	Sensitivity & Scenario Analysis
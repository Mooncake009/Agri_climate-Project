# Climate and Agriculture in Africa: A Data-Driven Exploration (2019–2023)
## Project Overview 
This project explores how rising temperatures and unpredictable weather patterns have impacted crop yields and agricultural productivity across 20 African countries from 2019 to 2023.
The objective was to analyze these effects, uncover region-specific trends, and offer actionable insights to support better agricultural decision-making.

## Data Description 
### Sources:
**Agricultural Data:** Food and Agriculture Organization (FAO) database
**Climate Data:** Climatic Research Unit (CRU TS4.07) via CRUData

### Content:
**Agricultural Data:** 
- Country
- Year (2019 - 2023)
- Product (Meat and Animal products, Fruits and Vegetables, Oil and Fibre and Crops and Grains)
- Yield (tonnes)

**Climate Data:**
- Country
- Year
- Precipitation
- Min and max Temperature
- Average Temperature
- Temperature baseline
- Temperature Anomaly

## Tool Used 
**Excel:** Data formatting, cleaning, and initial structuring (e.g., food category grouping)
**SQL:** Data exploration, querying for insights such as regional yield comparisons, average climate conditions
**Power BI:** Data visualization to present findings interactively and highlight key insights

## Project Scope 
### Exploratory Data Analysis (EDA):
Examined year-on-year trends for crop yields across different countries.
Analyzed how average temperature and precipitation changed over the same period.
Explored possible patterns by visually comparing agricultural yield trends against climate trends to check for potential correlations (e.g., declining yields with rising temperatures).

### Data Analysis:
Merged agricultural and climate datasets for a unified view.
Used SQL queries to compare yields across countries in the same region (e.g., Eastern Africa, Northern Africa).
Analyzed relationships between yield, average temperature, and precipitation, and summarized average climate metrics per region to enable deeper comparisons.

### Data Visualization:
Visualized top- and bottom-performing countries in terms of agricultural yield.
Created regional breakdowns of agricultural yield performance.
Built trend lines showing yield, temperature, and precipitation changes over the years.
Designed summary dashboards highlighting key metrics for easier interpretation.

## Key Insights
**Staple Crops Dominate:**
Maize and cassava lead agricultural yields across Africa, far outpacing fruits, vegetables, and animal products. Their dominance makes them critical for assessing climate impacts.
**Sharp Climate Variations:**
High-rainfall countries (e.g., Gabon, Cameroon) face flood risks, while arid nations (e.g., Egypt, Algeria) depend on irrigation. Heat stress challenges countries like Botswana and South Africa, pushing the need for adaptive farming.
**No Straight Climate-Yield Link:**
High yields occur under a range of climate conditions, showing that factors like farmland, infrastructure, and investment also heavily influence productivity.
**Crops Show Resilience:**
Staple crops maintain strong yields even during climate anomalies, suggesting greater resilience compared to other categories.
**Yield Growth May Be Slowing:**
While yields grew steadily from 2019 to 2022, growth plateaued from 2022 to 2023, hinting at a need for new innovations.

## Conclusion and Recommendations
While climate factors like rainfall are critical, they alone do not determine agricultural yields. Water availability, farming practices, and investments are equally vital. Strengthening climate-smart agriculture is essential for food security and adapting to ongoing climate changes in Africa.

## Data Limitations
- Agricultural food categories were grouped into four broad groups to simplify analysis due to the numerous original categories. The dataset is dominated by Crops & Grains, possibly masking trends in other categories. 
- Important variables like soil quality, pests, and farming methods were not included.
- The five-year timeframe restricts long-term trend analysis.

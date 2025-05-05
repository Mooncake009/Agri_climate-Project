SELECT TOP (1000) [Country ]
      ,[Year ]
      ,[Product]
      ,[Yield (t)]
  FROM [Personal Projects ].[dbo].[agri_data$]

  select *
  from [dbo].[agri_data$]

  select *
  from [dbo].[climate$]

  -- Which countries have the highest and lowest average agricultural yield over the years?
  select [Country ], AVG([Yield (t)]) Avg_Yield
  from [dbo].[agri_data$]
  group by [Country ]
  order by Avg_Yield desc

   --Most productive crops across regions
  select Product, AVG([Yield (t)]) Avg_Yield
  from [dbo].[agri_data$]
  group by Product
  order by Avg_Yield desc

  --How does temperature affect agricultural yield?
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  
  --country, yield, temp and precipitation over the years 
  select A.[Country ], SUM([Yield (t)]) Total_yeild, AVG(Average_Temp) Avg_temp, AVG([ Precipitation ]) Avg_precipitation
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  group by a.[Country ]

  --How does precipitation affect agricultural yield 
  select A.[Country ], A.[Year ], Product, [Yield (t)], [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]

  --Which crops are most affected by extreme temperature or precipitation?
  select Product, AVG([Yield (t)]) Avg_yield, AVG(Average_Temp) Avg_temp, AVG([ Precipitation ]) Avg_precipitation 
  from [dbo].[agri_data$] as A 
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] = C.[Year ]
  GROUP BY Product

  --Which countries have seen the biggest increase/decrease in yield over time?
  select [Country ], MIN([Year ]) Start_year, max([Year ]) End_year, (MAX([Yield (t)]) - MIN([Yield (t)])) Yield_change 
  from [dbo].[agri_data$]
  group by [Country ]
  order by Yield_change desc

  --Which country has the most stable (least fluctuating) yield over the years?
  Select [Country ], STDEV([Yield (t)]) Yield_volatility 
  from [dbo].[agri_data$]
  group by [Country ]
  order by Yield_volatility  

  --How do temperature anomalies impact yield?
  select A.[Country ], A.[Year ], Product, [Yield (t)], [Anomaly ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C
  on A.[Country ] = c.[Country ] and A.[Year ] = C.[Year ]
  order by [Anomaly ] desc

  ---REGIONS 
  ---North Africa
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp, [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  where A.[Country ] IN ('Algeria', 'Morocco', 'Egypt', 'Sudan')

   ---West Africa 
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp, [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  where A.[Country ] IN ('Nigeria', 'Ghana', 'Senegal', 'Burkina Faso')

   ---East Africa 
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp, [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  where A.[Country ] IN ('Kenya', 'Ethopia', 'Uganda', 'Tanzania')

   ---Southern Africa 
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp, [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  where A.[Country ] IN ('South Africa', 'Zimbabwe', 'Bostwana', 'Angola')

    ---Central Africa 
  select A.[Country ], A.[Year ], Product, [Yield (t)], Average_Temp, [ Precipitation ]
  from [dbo].[agri_data$] as A
  join [dbo].[climate$] as C 
  on A.[Country ] = C.[Country ] and A.[Year ] =  C.[Year ]
  where A.[Country ] IN ('Cameroon', 'Chad', 'Gabon', 'DR Congo')
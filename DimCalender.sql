--Cleaning DimDate data
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek], 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek], 
  [DayNumberOfMonth],
  --,[DayNumberOfYear], 
  [WeekNumberOfYear] as WeekNo, 
  [EnglishMonthName], 
  Left ([EnglishDayNameOfWeek], 3) as MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  --,[MonthNumberOfYear]
  --,[CalendarQuarter],
  [CalendarYear] --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2021

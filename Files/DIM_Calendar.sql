SELECT 
  [Datekey],
  [FullDateAlternateKey] AS Date,
  --[DayNumberOfWeek],
  [EnglishDayNameOfWeek] AS Day,
  --[SpanishDayNumberOfWeek],
  --[FrenchDayNumberOfWeek],
  --[DayNumberOfMonth],
  --[DayNumberOfYear],
  [WeekNumberOfYear] AS WeekNr,
  [EnglishMonthName] As Month,
  Left([EnglishMonthName], 3) AS MonthShort,   -- Useful for front end date navigation and front end graphs.
  --[SpanishMonthName],
  --[FrenchMonthName],
  [MonthNumberOfYear] AS MonthNo,
  [CalendarQuarter] AS Quarter,
  [CalendarYear] AS Year 
  --[CalendarSemester],
  --[FiscalQuarter],
  --[FiscalYear],
  --[FiscalSemester]
FROM
[AdventureWorksDW2022].[dbo].[DimDate]
WHERE
CalendarYear >= 2022
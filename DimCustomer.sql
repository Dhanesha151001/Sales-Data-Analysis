SELECT c.[CustomerKey] AS CustomerID
	--[GeographyKey],[CustomerAlternateKey],
	--[Title]
	,c.[FirstName] --,[MiddleName]
	,c.[LastName] --,[NameStyle]
	,c.FirstName + ' ' + LastName AS FullName
	,c.[BirthDate]
	,c.[MaritalStatus] --,[Suffix]
	,CASE c.[Gender]
		WHEN 'M'
			THEN 'Male'
		WHEN 'F'
			THEN 'Female'
		END AS Gender --,[EmailAddress]
	,c.[YearlyIncome] --,[TotalChildren]
	--,[NumberChildrenAtHome]
	-- ,[EnglishEducation]
	--,[SpanishEducation]
	--,[FrenchEducation]
	-- ,[EnglishOccupation]
	--,[SpanishOccupation]
	--,[FrenchOccupation]
	-- ,[HouseOwnerFlag]
	--  ,[NumberCarsOwned]
	-- ,[AddressLine1]
	-- ,[AddressLine2]
	-- ,[Phone]
	,c.[DateFirstPurchase] AS DateFirstPurchase -- ,[CommuteDistance]
	,g.City AS CustomerCity
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
LEFT JOIN [dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY c.CustomerKey ASC

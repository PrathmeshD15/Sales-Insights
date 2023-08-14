SELECT  
      C.customerkey As CustomerKey
     -- ,[GeographyKey]
      -- ,[CustomerAlternateKey]
      --,[Title]
      ,C.firstName as [FirstName]
      --,[MiddleName]
      ,C.LastName as [LastName],
	  C.firstName + ' ' + C.LastName as [FullName],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      Case C.gender When 'M' then 'Male' when 'F' then 'Female' End AS gender,
     -- ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      C.DateFirstPurchase as [DateFirstPurchase],
      --,[CommuteDistance]
	  g.city as [Customer City]
  FROM 
  [dbo].[DimCustomer] As C
  left join dbo.dimGeography As g on g.GeographyKey = C.GeographyKey
  order by
  CustomerKey ASC

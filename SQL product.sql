SELECT 
       p.[ProductKey],
      p.[ProductAlternateKey] As ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] AS [ProductName],
	   ps.EnglishProductSubcategoryName AS [Sub Category], 
  pc.EnglishProductCategoryName AS [Product Category],
     -- ,[SpanishProductName]
     -- ,[FrenchProductName]
     -- ,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] As [Product color],
   --   ,[SafetyStockLevel]
     -- ,[ReorderPoint]
      --,[ListPrice]
      p.[Size] as [Product size],
     -- ,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] as [Product Line] ,
     -- ,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] as [Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] as[English Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ISNULL (p.Status , 'Outdated') As [Product Status]
	  
  FROM
  [AdventureWorksDW2022].[dbo].[DimProduct] as p
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
  order by 
  p.ProductKey asc

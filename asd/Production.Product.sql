/*=============================================================


Version:   0.00.0012
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  Product


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Table [Production].[Product]
Print 'Create Table [Production].[Product]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[Product] (
		[ProductID2]                 [int] IDENTITY(1, 1) NOT NULL,
		[Name]                      [dbo].[Name] NOT NULL,
		[ProductNumber2]             [nvarchar](25) NOT NULL,
		[MakeFlag]                  [dbo].[Flag] NOT NULL,
		[FinishedGoodsFlag]         [dbo].[Flag] NOT NULL,
		[Color]                     [nvarchar](15) NULL,
		[SafetyStockLevel]          [smallint] NOT NULL,
		[ReorderPoint2]              [smallint] NOT NULL,
		[StandardCost]              [money] NOT NULL,
		[ListPrice2]                 [money] NOT NULL,
		[Size]                      [nvarchar](5) NULL,
		[SizeUnitMeasureCode]       [nchar](3) NULL,
		[WeightUnitMeasureCode]     [nchar](3) NULL,
		[Weight]                    [decimal](8, 2) NULL,
		[DaysToManufacture]         [int] NOT NULL,
		[ProductLine]               [nchar](2) NULL,
		[Class]                     [nchar](2) NULL,
		[Style]                     [nchar](2) NULL,
		[ProductSubcategoryID2]      [int] NULL,
		[ProductModelID]            [int] NULL,
		[SellStartDate]             [datetime] NOT NULL,
		[SellEndDate]               [datetime] NULL,
		[DiscontinuedDate]          [datetime] NULL,
		[rowguid]                   [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_Product_ProductID]
		PRIMARY KEY
		CLUSTERED
		([ProductID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_SafetyStockLevel]
	CHECK
	([SafetyStockLevel]>(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_SafetyStockLevel]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ReorderPoint]
	CHECK
	([ReorderPoint]>(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ReorderPoint]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_StandardCost]
	CHECK
	([StandardCost]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_StandardCost]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ListPrice]
	CHECK
	([ListPrice]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ListPrice]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Weight]
	CHECK
	([Weight]>(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Weight]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_DaysToManufacture]
	CHECK
	([DaysToManufacture]>=(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_DaysToManufacture]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ProductLine]
	CHECK
	(upper([ProductLine])='R' OR upper([ProductLine])='M' OR upper([ProductLine])='T' OR upper([ProductLine])='S' OR [ProductLine] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ProductLine]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Class]
	CHECK
	(upper([Class])='H' OR upper([Class])='M' OR upper([Class])='L' OR [Class] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Class]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Style]
	CHECK
	(upper([Style])='U' OR upper([Style])='M' OR upper([Style])='W' OR [Style] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Style]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_SellEndDate]
	CHECK
	([SellEndDate]>=[SellStartDate] OR [SellEndDate] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_SellEndDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_MakeFlag]
	DEFAULT ((1)) FOR [MakeFlag]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_FinishedGoodsFlag]
	DEFAULT ((1)) FOR [FinishedGoodsFlag]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_ProductNumber]
	ON [Production].[Product] ([ProductNumber])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_Name]
	ON [Production].[Product] ([Name])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_rowguid]
	ON [Production].[Product] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_UnitMeasure_SizeUnitMeasureCode]
	FOREIGN KEY ([SizeUnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_UnitMeasure_SizeUnitMeasureCode]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_UnitMeasure_WeightUnitMeasureCode]
	FOREIGN KEY ([WeightUnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_UnitMeasure_WeightUnitMeasureCode]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_ProductModel_ProductModelID]
	FOREIGN KEY ([ProductModelID]) REFERENCES [Production].[ProductModel] ([ProductModelID])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_ProductModel_ProductModelID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_ProductSubcategory_ProductSubcategoryID]
	FOREIGN KEY ([ProductSubcategoryID]) REFERENCES [Production].[ProductSubcategory] ([ProductSubcategoryID])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_ProductSubcategory_ProductSubcategoryID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO

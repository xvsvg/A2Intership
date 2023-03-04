IF NOT EXISTS(SELECT * FROM sys.databases WHERE name='dataset')
BEGIN
	CREATE DATABASE dataset
END
GO

USE dataset


CREATE TABLE [Vendor]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[VendorName] nvarchar(100) NOT NULL,
)

CREATE TABLE [Customer]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[VendorId] INT FOREIGN KEY REFERENCES Vendor(Id),
	[CustomerName] nvarchar(50) NOT NULL,
	[TaxNumber] nvarchar(50) NULL,
)

CREATE TABLE [Orders]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[VendorId] INT FOREIGN KEY REFERENCES Vendor(Id),
	[CustomerId] INT FOREIGN KEY REFERENCES Customer(Id),
	[DeclarationNumber] nvarchar(100) NOT NULL,
)
use master
go
drop database FinalProjectSE
go
create database FinalProjectSE
go
use FinalProjectSE
go
CREATE TABLE [Accountant] (
  [ID] INT IDENTITY,
  [AccountId] AS 'A' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- A0000001
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [ReceiveNote] (
  [ID] INT IDENTITY,
  [ReceiveID] AS 'RN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- RN000001
  [creator] varchar(50),
  [creatDay] varchar(8),
  [accountantID] varchar(10)
)
GO

CREATE TABLE [DeliveryNote] (
  [ID] INT IDENTITY,
  [DeliveryID] AS 'DN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- DN000001
  [creator] varchar(50),
  [creatDay] date default getDate(),
  [deliverStatus] int,
  [payStatus] int,
  [accountantID] varchar(10)
)
GO

CREATE TABLE [ProductInstance] (
  [ID] INT IDENTITY,
  [PIID] AS 'PI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- DN000001
  [name] varchar(50),
  [price] float,
  [quantity] int,
  [totalPrice] float,
  [cartID] varchar(10),
  [productID] varchar(10)
)
GO

CREATE TABLE [ListOfProduct] (
    [ID] INT IDENTITY,
    [PIID] AS 'PI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- DN000001
  [PIID] varchar(10),
  [quantity] int,
  [totalPrice] float,
  [noteID] varchar(10)
)
GO

CREATE TABLE [Product] (
  [ID] INT IDENTITY,
  [ProductId] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [supplierID] varchar(10),
  [price] float,
  [genre] varchar(20)
)
GO

CREATE TABLE [Genre] (
  [type] varchar(20) primary key
)
GO

CREATE TABLE [Supplier] (
  [ID] INT IDENTITY,
  [supplierID] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [supName] varchar(50)
)
GO

CREATE TABLE [Customer] (
  [ID] INT IDENTITY,
  [CustomerId] AS 'C' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [Order] (
  [ID] INT IDENTITY,
  [OrderId] AS 'O' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [orderDay] varchar(10),
  [status] int,
  [payMethod] varchar(10),
  [cusID] varchar(10)
)
GO

CREATE TABLE [Cart] (
  [ID] INT IDENTITY,
  [CartId] AS 'CA' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [numberOfItem] int,
  [totalPrice] float,
  [productName] varchar(50),
  [orderID] varchar(10)
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([prodInsID]) REFERENCES [ProductInstance] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([cartID]) REFERENCES [Cart] ([CartId])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([cusID]) REFERENCES [Customer] ([id])
GO

ALTER TABLE [Cart] ADD FOREIGN KEY ([orderID]) REFERENCES [Order] ([OrderId])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([productID]) REFERENCES [Product] ([id])
GO

ALTER TABLE [ReceiveNote] ADD FOREIGN KEY ([accountantID]) REFERENCES [Accountant] ([AccountId])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([id]) REFERENCES [Accountant] ([AccountId])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [ReceiveNote] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [DeliveryNote] ([id])
GO

select * from [Order]
select * from [Customer]
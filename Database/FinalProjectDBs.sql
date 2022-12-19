use master
go
drop database FinalProjectSE
go
create database FinalProjectSE
go
use FinalProjectSE
go
CREATE TABLE [Accountant] (
  [ID] INT IDENTITY PRIMARY KEY,
  [AccountId] AS 'A' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED, -- A0000001
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [ReceiveNote] (
  [ID] INT IDENTITY PRIMARY KEY,
  [ReceiveID] AS 'RN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED, -- RN000001
  [creator] varchar(50),
  [creatDay] varchar(8),
  [accountantID]  INT
)
GO

CREATE TABLE [DeliveryNote] (
  [ID] INT IDENTITY PRIMARY KEY,
  [DeliveryID] AS 'DN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED , -- DN000001
  [creator] varchar(50),
  [creatDay] date default getDate(),
  [deliverStatus] int,
  [payStatus] int,
  [accountantID]  INT
)
GO

CREATE TABLE [ProductInstance] (
  [ID] INT IDENTITY PRIMARY KEY,
  [PIID] AS 'PI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED, -- DN000001
  [name] varchar(50),
  [price] float,
  [quantity] int,
  [totalPrice] float,
  [cartID] INT,
  [productID]  INT
)
GO

CREATE TABLE [ListOfProduct] (
  [ID] INT IDENTITY PRIMARY KEY,
  [PIID] AS 'PI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED, -- DN000001
  [quantity] int,
  [totalPrice] float,
  [noteID]  INT,
  [prodInsID] INT
)
GO

CREATE TABLE [Product] (
  [ID] INT IDENTITY PRIMARY KEY,
  [ProductId] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED,
  [supplierID] INT,
  [price] float,
  [genre] varchar(20)
)
GO


CREATE TABLE [Genre] (
  [type] varchar(20) primary key
)
GO

CREATE TABLE [Supplier] (
  [ID] INT IDENTITY PRIMARY KEY,
  [supplierID] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED,
  [supName] varchar(50)
)
GO

CREATE TABLE [Customer] (
  [ID] INT IDENTITY PRIMARY KEY,
  [CustomerId] AS 'C' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED,
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [Order] (
  [ID] INT IDENTITY PRIMARY KEY,
  [OrderId] AS 'O' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED,
  [orderDay] varchar(10),
  [status] int,
  [payMethod] varchar(10),
  [cusID]  INT
)
GO

CREATE TABLE [Cart] (
  [ID] INT IDENTITY PRIMARY KEY,
  [CartId] AS 'CA' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED,
  [numberOfItem] int,
  [totalPrice] float,
  [productName] varchar(50),
  [orderID] INT
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([ID])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([prodInsID]) REFERENCES [ProductInstance] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([cartID]) REFERENCES [Cart] ([Id])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([cusID]) REFERENCES [Customer] ([id])
GO

ALTER TABLE [Cart] ADD FOREIGN KEY ([orderID]) REFERENCES [Order] ([ID])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([productID]) REFERENCES [Product] ([id])
GO

ALTER TABLE [ReceiveNote] ADD FOREIGN KEY ([accountantID]) REFERENCES [Accountant] ([ID])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([id]) REFERENCES [Accountant] ([ID])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [ReceiveNote] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [DeliveryNote] ([id])
GO

select * from [Order]
select * from [Customer]
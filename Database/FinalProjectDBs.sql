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
  [creatDay] date default getDate(),
  [accountantID] varchar(7)
)
GO

CREATE TABLE [DeliveryNote] (
  [ID] INT IDENTITY PRIMARY KEY,
  [DeliveryID] AS 'DN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED , -- DN000001
  [creator] varchar(50),
  [creatDay] date default getDate(),
  [deliverStatus] int,
  [payStatus] int,
  [accountantID] varchar (7)
)
GO

CREATE TABLE [ProductInstance] (
  [ID] INT IDENTITY ,
  [PIID] AS 'PI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- DN000001
  [name] varchar(50),
  [price] float,
  [quantity] int,
  [totalPrice] float,
  [cartID] INT,
  [productID]  INT
)
GO

CREATE TABLE [ListOfProduct] (
  [ID] INT IDENTITY,
  [LIID] AS 'LI' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- LI000001
  [quantity] int,
  [totalPrice] float,
  [noteID]  varchar(8),
  [PPID] varchar(8)
)
GO

CREATE TABLE [Product] (
  [ID] INT IDENTITY,
  [ProductId] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [supplierID] varchar (7),
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
  [supplierID] AS 'S' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [supName] varchar(50)
)
GO

CREATE TABLE [Customer] (
  [ID] INT IDENTITY, -- 1 2 3 4 5
  [CustomerId] AS 'C' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- (C0000001)
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [Order] (
  [ID] INT IDENTITY, -- 1 2 3 4 5 
  [OrderId] AS 'O' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- (O0000001)
  [orderDay] varchar(10),
  [status] int,
  [payMethod] varchar(10),
  [cusID] varchar(7)
)
GO

CREATE TABLE [Cart] (
  [ID] INT IDENTITY,
  [CartId] AS 'CA' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [numberOfItem] int,
  [totalPrice] float,
  [productName] varchar(50),
  [orderID] varchar (7)
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([supplierID])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([PPID]) REFERENCES [ProductInstance] ([PPID])
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
select * from [ProductInstance]
select * from [Accountant]
insert into Accountant(name,numPhone,email,age,address) values('Tuong','0911485802','abc@gmail.com',14,'phu my hung')
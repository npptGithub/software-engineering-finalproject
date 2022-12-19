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
  [creatDay] date default getDate(),
  [accountantID] varchar(7)
)
GO

CREATE TABLE [DeliveryNote] (
  [ID] INT IDENTITY,
  [DeliveryID] AS 'DN' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY, -- DN000001
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
  [cartID] varchar(8),
  [productID]  varchar(7)
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
  [supplierID] varchar(7),
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
  [ID] INT IDENTITY, -- 1 2 3 4 
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

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([PPID]) REFERENCES [ProductInstance] ([PIID])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([cartID]) REFERENCES [Cart] ([CartId])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([cusID]) REFERENCES [Customer] ([CustomerId])
GO

ALTER TABLE [Cart] ADD FOREIGN KEY ([orderID]) REFERENCES [Order] ([OrderId])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([productID]) REFERENCES [Product] ([ProductId])
GO

ALTER TABLE [ReceiveNote] ADD FOREIGN KEY ([accountantID]) REFERENCES [Accountant] ([AccountId])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([accountantID]) REFERENCES [Accountant] ([AccountId])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [ReceiveNote] ([ReceiveID])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([noteID]) REFERENCES [DeliveryNote] ([DeliveryID])
GO

select * from [Order]
select * from [Customer]
select * from [ProductInstance]
select * from [Accountant]
select * from [Supplier]

insert into Accountant(name,numPhone,email,age,address) values('Tuong','0911485802','abc@gmail.com',14,'phu my hung')
insert into Accountant(name,numPhone,email,age,address) values('Toan','0911485852','ex1@gmail.com',12,'Tan Quy')
insert into Accountant(name,numPhone,email,age,address) values('Thinh','0911485963','ex3@gmail.com',42,'Tan Phu')
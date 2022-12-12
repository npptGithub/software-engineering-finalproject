CREATE TABLE [Accountant] (
  [id] varchar(10) PRIMARY KEY
)
GO

CREATE TABLE [LoginAccount] (
  [id] varchar(10) PRIMARY KEY,
  [userName] varchar(20),
  [password] varchar(8)
)
GO

CREATE TABLE [Address] (
  [id] varchar(50) PRIMARY KEY,
  [street] varchar(10),
  [commune] varchar(10),
  [district] varchar(10),
  [city] varchar(10)
)
GO

CREATE TABLE [ReceiveNote] (
  [id] varchar(10) PRIMARY KEY,
  [creator] varchar(50),
  [creatDay] varchar(8),
  [productList] varchar(10)
)
GO

CREATE TABLE [DeliveryNote] (
  [id] varchar(10) PRIMARY KEY,
  [creator] varchar(50),
  [creatDay] varchar(8),
  [productList] varchar(10),
  [deliverStatus] varchar(10),
  [payStatus] varchar(10),
  [accountantId] varchar(10)
)
GO

CREATE TABLE [ProductInstance] (
  [id] varchar(10) PRIMARY KEY,
  [name] varchar(50),
  [price] float,
  [quantity] int,
  [totalPrice] float,
  [cardID] varchar(10)
)
GO

CREATE TABLE [ListOfProduct] (
  [ID] varchar(10) PRIMARY KEY,
  [productName] varchar(50),
  [quantity] int,
  [totalPrice] float
)
GO

CREATE TABLE [Product] (
  [id] varchar(10) PRIMARY KEY,
  [supplierID] varchar(10),
  [prodID] varchar(50),
  [price] float,
  [genre] varchar(20)
)
GO

CREATE TABLE [Genre] (
  [type] varchar(20) PRIMARY KEY
)
GO

CREATE TABLE [Supplier] (
  [id] varchar(10) PRIMARY KEY,
  [supName] varchar(50)
)
GO

CREATE TABLE [Customer] (
  [id] varchar(10) PRIMARY KEY,
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [orderID] varchar(10)
)
GO

CREATE TABLE [Order] (
  [id] varchar(10) PRIMARY KEY,
  [orderDay] varchar(10),
  [cardID] varchar(10),
  [status] varchar(10),
  [payMethod] varchar(10)
)
GO

CREATE TABLE [Cart] (
  [id] varchar(10) PRIMARY KEY,
  [numberOfItem] int,
  [totalPrice] float,
  [productName] varchar(50)
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([id]) REFERENCES [Product] ([prodID])
GO

ALTER TABLE [Customer] ADD FOREIGN KEY ([address]) REFERENCES [Address] ([id])
GO

ALTER TABLE [Cart] ADD FOREIGN KEY ([id]) REFERENCES [Order] ([cardID])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([id]) REFERENCES [Customer] ([orderID])
GO

ALTER TABLE [Accountant] ADD FOREIGN KEY ([id]) REFERENCES [LoginAccount] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([productName]) REFERENCES [ProductInstance] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [ReceiveNote] ([productList])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [DeliveryNote] ([productList])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([accountantId]) REFERENCES [Accountant] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([cardID]) REFERENCES [Cart] ([id])
GO

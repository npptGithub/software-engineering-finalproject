CREATE TABLE [Accountant] (
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [noteID] varchar(10),
  [loginName] varchar(20)
)
GO

CREATE TABLE [Agency] (
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [orderID] varchar(10),
  [loginName] varchar(20)
)
GO

CREATE TABLE [LoginAccount] (
  [userName] varchar(20),
  [password] varchar(8)
)
GO

CREATE TABLE [Address] (
  [id] varchar(10) PRIMARY KEY,
  [street] varchar(10),
  [commune] varchar(10),
  [district] varchar(10),
  [city] varchar(10)
)
GO

CREATE TABLE [ReceiveNote] (
  [id] varchar(10),
  [creator] varchar(50),
  [creatDay] varchar(8),
  [type] varchar(20),
  [productList] varchar(20)
)
GO

CREATE TABLE [DeliveryNote] (
  [id] varchar(10),
  [creator] varchar(50),
  [creatDay] varchar(8),
  [type] varchar(20),
  [productList] varchar(20),
  [deliverStatus] varchar(10),
  [payStatus] varchar(10),
  [agentName] varchar(10)
)
GO

CREATE TABLE [ProductInstance] (
  [name] varchar(50) PRIMARY KEY,
  [price] float,
  [quantity] int,
  [totalPrice] double,
  [cardID] varchar(10)
)
GO

CREATE TABLE [ListOfProduct] (
  [ID] varchar(10),
  [productName] varchar(50),
  [quantity] int
)
GO

CREATE TABLE [Note] (
  [ID] varchar(10),
  [type] varchar(20)
)
GO

CREATE TABLE [Product] (
  [id] varchar(10),
  [supplierID] varchar(10),
  [prodName] varchar(50),
  [price] float,
  [genre] varchar(20)
)
GO

CREATE TABLE [Genre] (
  [type] nvarchar(255) PRIMARY KEY
)
GO

CREATE TABLE [Supplier] (
  [id] varchar(10),
  [supName] varchar(50)
)
GO

CREATE TABLE [Consumer] (
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [orderID] varchar(10)
)
GO

CREATE TABLE [Order] (
  [id] varchar(10),
  [orderDay] varchar(10),
  [cardID] varchar(10),
  [status] varchar(10),
  [payMethod] varchar(10)
)
GO

CREATE TABLE [Cart] (
  [id] varchar(10),
  [numberOfItem] int,
  [totalPrice] double,
  [productName] varchar(50)
)
GO

CREATE TABLE [Cart_ProductInstance] (
    [Cart_productName] varchar(50),
    [ProductInstance_cardID] varchar(10),
    PRIMARY KEY ([Cart_productName], [ProductInstance_cardID])
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([name]) REFERENCES [Product] ([prodName])
GO



ALTER TABLE [Cart_ProductInstance] ADD FOREIGN KEY ([Cart_productName]) REFERENCES [Cart] ([productName]);
GO

ALTER TABLE [Cart_ProductInstance] ADD FOREIGN KEY ([ProductInstance_cardID]) REFERENCES [ProductInstance] ([cardID]);
GO


ALTER TABLE [Consumer] ADD FOREIGN KEY ([address]) REFERENCES [Address] ([id])
GO

ALTER TABLE [Cart] ADD FOREIGN KEY ([id]) REFERENCES [Order] ([cardID])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([id]) REFERENCES [Consumer] ([orderID])
GO

ALTER TABLE [Accountant] ADD FOREIGN KEY ([address]) REFERENCES [Address] ([id])
GO

ALTER TABLE [Accountant] ADD FOREIGN KEY ([loginName]) REFERENCES [LoginAccount] ([userName])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([productName]) REFERENCES [ProductInstance] ([name])
GO

ALTER TABLE [Note] ADD FOREIGN KEY ([type]) REFERENCES [ReceiveNote] ([id])
GO

ALTER TABLE [Note] ADD FOREIGN KEY ([type]) REFERENCES [DeliveryNote] ([id])
GO

ALTER TABLE [Note] ADD FOREIGN KEY ([ID]) REFERENCES [Accountant] ([noteID])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [ReceiveNote] ([productList])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [DeliveryNote] ([productList])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([agentName]) REFERENCES [Agency] ([name])
GO

ALTER TABLE [Agency] ADD FOREIGN KEY ([address]) REFERENCES [Address] ([id])
GO

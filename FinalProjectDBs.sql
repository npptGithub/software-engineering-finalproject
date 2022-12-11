CREATE TABLE [Accountant] (
  [id] varchar(10),
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [noteID] varchar(10)
)
GO

CREATE TABLE [Agency] (
  [id] varchar(10),
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
  [email] varchar(50),
  [age] int,
  [address] varchar(50),
  [orderID] varchar(10),
  [accountantID] varchar(10)
)
GO

CREATE TABLE [LoginAccount] (
  [id] varchar(10),
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
  [payStatus] varchar(10)
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

CREATE TABLE [Product] (
  [id] varchar(10) PRIMARY KEY,
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
  [id] varchar(10) PRIMARY KEY,
  [supName] varchar(50)
)
GO

CREATE TABLE [Consumer] (
  [id] varchar(10),
  [name] varchar(50),
  [numPhone] varchar(10) PRIMARY KEY,
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
  [totalPrice] double,
  [productName] varchar(50)
)
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([genre]) REFERENCES [Genre] ([type])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([supplierID]) REFERENCES [Supplier] ([id])
GO

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([name]) REFERENCES [Product] ([prodName])
GO

CREATE TABLE [Cart_ProductInstance] (
  [Cart_productName] varchar(50),
  [ProductInstance_cardID] varchar(10),
  PRIMARY KEY ([Cart_productName], [ProductInstance_cardID])
);
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

ALTER TABLE [Accountant] ADD FOREIGN KEY ([id]) REFERENCES [LoginAccount] ([id])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([productName]) REFERENCES [ProductInstance] ([name])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [ReceiveNote] ([productList])
GO

ALTER TABLE [ListOfProduct] ADD FOREIGN KEY ([ID]) REFERENCES [DeliveryNote] ([productList])
GO

ALTER TABLE [Agency] ADD FOREIGN KEY ([address]) REFERENCES [Address] ([id])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([id]) REFERENCES [Agency] ([orderID])
GO

ALTER TABLE [ReceiveNote] ADD FOREIGN KEY ([id]) REFERENCES [Accountant] ([noteID])
GO

ALTER TABLE [DeliveryNote] ADD FOREIGN KEY ([id]) REFERENCES [Accountant] ([noteID])
GO

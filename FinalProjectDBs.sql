drop database FinalProjectSE
go
create database FinalProjectSE
go
use FinalProjectSE
go
CREATE TABLE [Accountant] (
  [ID] INT IDENTITY,
  [AccountId] AS 'A' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [name] varchar(50),
  [numPhone] varchar(10),
  [email] varchar(50),
  [age] int,
  [address] varchar(50)
)
GO

CREATE TABLE [ReceiveNote] (
  [ID] INT IDENTITY PRIMARY KEY,
  [creator] varchar(50),
  [creatDay] varchar(8),
  [accountantID] varchar(10)
)
GO

CREATE TABLE [DeliveryNote] (
  [ID] INT IDENTITY PRIMARY KEY,
  [creator] varchar(50),
  [creatDay] varchar(8),
  [deliverStatus] int,
  [payStatus] int,
  [accountantID] varchar(10)
)
GO

CREATE TABLE [ProductInstance] (
  [id] int IDENTITY PRIMARY KEY,
  [name] varchar(50),
  [price] float,
  [quantity] int,
  [totalPrice] float,
  [cartID] varchar(10),
  [productID] varchar(10)
)
GO

CREATE TABLE [ListOfProduct] (
  [ID] int IDENTITY PRIMARY KEY,
  [prodInsID] varchar(10),
  [quantity] int,
  [totalPrice] float,
  [noteID] int
)
GO


CREATE TABLE [Product] (
  [ID] INT IDENTITY,
  [ProductId] AS 'P' + RIGHT('000000' + CAST(ID AS VARCHAR(10)), 6) PERSISTED PRIMARY KEY,
  [prodName] varchar(50),
  [supplierID] int,
  [price] float,
  [genre] varchar(20)
)
GO

CREATE TABLE [Genre] (
  [type] varchar(20) primary key
)
GO

CREATE TABLE [Supplier] (
  [id] int identity PRIMARY KEY,
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

ALTER TABLE [ProductInstance] ADD FOREIGN KEY ([cardID]) REFERENCES [Cart] ([id])
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



INSERT INTO tableName ("ID", AccountId, name, numPhone, email, age, address) VALUES
	('A001', '', 'Sarah', '0855065019', 'sarah@email.com', '23', 'Tan Quy, D7, HCM'),
	('A002', '', 'Joe', '08550123852', 'joe@email.com', '24', 'Tan Phong, D7, HCM');

	INSERT INTO tableName (id, supName) VALUES
	('Sup001', 'Hoang Phuc'),
	('Sup002', 'JOMI');

	INSERT INTO tableName ("ID", OrderId, orderDay, status, payMethod, cusID) VALUES
	('O001', '', '12-Dec', '', 'Momo', 'C001'),
	('O002', '', '12-Dec', '', 'Cash', 'C001'),
	('O003', '', '12-Dec', '', 'Zalo', 'C001'),
	('O004', '', '12-Dec', '', 'Momo', 'C002'),
	('O005', '', '12-Dec', '', 'Credit', 'C002');

	INSERT INTO tableName (type) VALUES
	('Hair'),
	('Skin'),
	('Face'),
	('Health');

	INSERT INTO tableName ("ID", CustomerId, name, numPhone, email, age, address) VALUES
	('C001', '', 'cus1', '01204806732', 'cus1@email.com', '21', 'Tan Hung, D7, HCM'),
	('C002', '', 'cus2', '01204806787', 'cus2@email.com', '22', 'Tan Thuan Tay, D7, HCM'),
	('AG001', '', 'agent1', '01204806785', 'agent1@email.com', '0', 'Tan Thuan Dong, D7, HCM'),
	('AG002', '', 'agent2', '01204803214', 'agent2@email.com', '0', 'Tan Phu, D7, HCM');

	INSERT INTO tableName ("ID", ProductId, prodName, supplierID, price, genre) VALUES
	('H001', '', 'Clear', 'Hoang Phuc', '200000', 'Hair'),
	('H002', '', 'Cocoon', 'JOMI', '210000', 'Hair'),
	('Hth001', '', 'Aojiru', 'JOMI', '300000', 'Health'),
	('Hth002', '', 'Bonie', 'Hoang Phuc', '310000', 'Health'),
	('S001', '', 'Acnacare', 'JOMI', '120000', 'Skin'),
	('S002', '', 'Hauora', 'Hoang Phuc', '285000', 'Skin'),
	('F001', '', 'Mask Acne', 'JOMI', '21000', 'Face'),
	('F002', '', 'Jelly Mask', 'Hoang Phuc', '22000', 'Face');
CREATE DATABASE Shoe_DB;
USE Shoe_DB;

CREATE TABLE Contact (
    name VARCHAR(50),
    email VARCHAR(50),
    message VARCHAR(50)
);

CREATE TABLE Account (
    uid INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(50),
    pass VARCHAR(50),
    isSell INT,
    isAdmin INT
);

CREATE TABLE `Order` (
    oid INT AUTO_INCREMENT PRIMARY KEY,
    uid INT,
    totalQuantity INT,
    totalMoney FLOAT,
    purchaseDate DATE,
    address VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    image LONGTEXT,
    price FLOAT,
    title VARCHAR(50),
    description VARCHAR(50),
    cateID INT,
    sale_ID INT
);

CREATE TABLE Category (
    cid INT PRIMARY KEY,
    cname VARCHAR(50)
);

CREATE TABLE `Member` (
    mid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    phone VARCHAR(50),
    address VARCHAR(50),
    user_name VARCHAR(50)
);

CREATE TABLE DetailOrder (
    oid INT,
    pid INT,
    Quantity INT,
    PRIMARY KEY (oid, pid)
);

CREATE TABLE Bill (
    bid INT PRIMARY KEY,
    totalMoney INT,
    discount INT,
    startDate DATE,
    createDate DATE,
    State VARCHAR(50)
);

-- Khóa ngoại --
ALTER TABLE Product
ADD CONSTRAINT FK_Product_Account
FOREIGN KEY (sale_ID) REFERENCES Account(uid) ON UPDATE CASCADE;

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Category
FOREIGN KEY (cateID) REFERENCES Category(cid) ON UPDATE CASCADE;

ALTER TABLE DetailOrder
ADD CONSTRAINT FK_DetailOrder_Order
FOREIGN KEY (oid) REFERENCES `Order`(oid) ON UPDATE CASCADE;

ALTER TABLE DetailOrder
ADD CONSTRAINT FK_DetailOrder_Product
FOREIGN KEY (pid) REFERENCES Product(id) ON UPDATE CASCADE;

ALTER TABLE `Order`
ADD CONSTRAINT FK_Order_Account
FOREIGN KEY (uid) REFERENCES Account(uid);

ALTER TABLE `Member`
ADD CONSTRAINT FK_Member_Account
FOREIGN KEY (mid) REFERENCES Account(uid) ON UPDATE CASCADE;














































































-- ﻿CREATE DATABASE Shoe_DB
-- GO
-- USE Shoe_DB
-- GO
-- CREATE TABLE "Contact"(
-- 	"name" NVARCHAR(50),
-- 	"email" NVARCHAR(50),
-- 	"message" NVARCHAR(50)
-- )
-- CREATE TABLE "Account"(
-- 	"uid" INT IDENTITY(1,1) PRIMARY KEY,
-- 	"user" NVARCHAR(50),
-- 	"pass" NVARCHAR(50),
-- 	"isSell" INT,
-- 	"isAdmin" INT,
-- );

-- GO
-- CREATE TABLE "Order"(
-- 	"oid" INT IDENTITY(1,1) PRIMARY KEY,
-- 	"uid" INT,
-- 	"totalQuantity" INT,
-- 	"totalMoney" FLOAT,
-- 	"purchaseDate" DATE,
-- 	"address" NVARCHAR(50),
-- 	"email" NVARCHAR(50),
-- 	"phone" NVARCHAR(50),
-- 	"state" nvarchar(50),
-- ) ;
-- GO
-- CREATE TABLE "Product"(
-- 	"id" INT IDENTITY(1,1) PRIMARY KEY,
-- 	"name" NVARCHAR(50),
-- 	"image" NVARCHAR(MAX),
-- 	"price" FLOAT,
-- 	"title" NVARCHAR(50),
-- 	"description" NVARCHAR(50),
-- 	"cateID" INT,
-- 	"sale_ID" INT
-- ) ;
-- GO
-- CREATE TABLE "Category"(
-- 	"cid" INT PRIMARY KEY,
-- 	"cname" NVARCHAR(50)
-- 	) ;
-- GO
-- CREATE TABLE "Member"(
-- 	"mid" INT PRIMARY KEY,
-- 	"name" NVARCHAR(50),
-- 	"age" INT,
-- 	"email" NVARCHAR(50),
-- 	"phone" NVARCHAR(50),
-- 	"address" NVARCHAR(50)
-- ) ;
-- GO

-- CREATE TABLE "DetailOrder"(
-- 	"oid" INT,
-- 	"pid" INT,
-- 	"Quantity" INT,
-- 	PRIMARY KEY ("oid","pid")
-- )

-- CREATE TABLE "Bill"(
-- 	"bid" INT PRIMARY KEY,
-- 	"totalMoney" INT,
-- 	"discount" INT,
-- 	"startDate" DATE,
-- 	"createDate" DATE,
-- 	"State" NVARCHAR(50)
-- )
-- go


-- ---Khoá ngoại--
-- ALTER TABLE "Product"
-- ADD CONSTRAINT FK_Product_Account
-- FOREIGN KEY ("sale_ID") REFERENCES "Account"("uid") ON UPDATE CASCADE;
-- GO

-- ALTER TABLE "Product"
-- ADD CONSTRAINT FK_Product_Category
-- FOREIGN KEY ("cateID") REFERENCES "Category"("cid") ON UPDATE CASCADE;
-- GO


-- ALTER TABLE "DetailOrder"
-- ADD CONSTRAINT FK_DetailOrder_Order
-- FOREIGN KEY ("oid") REFERENCES "Order"("oid") ON UPDATE CASCADE;
-- GO

-- ALTER TABLE "DetailOrder"
-- ADD CONSTRAINT FK_DetailOrder_Product
-- FOREIGN KEY ("pid") REFERENCES "Product"("id") ON UPDATE CASCADE;
-- GO


-- ALTER TABLE "Order"
-- ADD CONSTRAINT FK_Order_Account
-- FOREIGN KEY ("uid") REFERENCES "Account"("uid");
-- GO

-- ALTER TABLE "Member"
-- ADD CONSTRAINT FK_Member_Account
-- FOREIGN KEY ("mid") REFERENCES "Account"("uid") ON UPDATE CASCADE;
-- GO

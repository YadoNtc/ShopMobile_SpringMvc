CREATE DATABASE springmobile
GO

USE springmobile
GO

CREATE TABLE roles (
	id INT IDENTITY NOT NULL,
	code VARCHAR(50),
	name NVARCHAR(50)
	CONSTRAINT PK_idRoles PRIMARY KEY (id)
)
GO

CREATE TABLE Users(
	id INT IDENTITY NOT NULL,
	userName VARCHAR(50) NULL,
	password VARCHAR(50) NULL,
	fullName NVARCHAR(50) NULL,
	address NVARCHAR(250) NULL,
	email NVARCHAR(50) NULL,
	phone VARCHAR(50) NULL,
	createDate DATETIME NULL,
	roleId INT NOT NULL,
	status BIT NULL,
    CONSTRAINT PK_user  PRIMARY KEY(id),
	CONSTRAINT FK_roleid FOREIGN KEY (roleId) REFERENCES dbo.roles (id)
)
GO

CREATE TABLE Categories(
	id int IDENTITY NOT NULL,
	name nvarchar(250) NULL,
	createdDate datetime NULL,
	createdBy Nvarchar(50),
	modifiedDate DATETIME,
	modifiedBy NVARCHAR(50),
	CONSTRAINT PK_Categories PRIMARY KEY(id) 
)
GO

CREATE TABLE Producer (
	id INT IDENTITY NOT NULL,
	code VARCHAR(50),
	name NVARCHAR(250),
	CONSTRAINT PK_producer PRIMARY KEY(id)
 )
 GO 

CREATE TABLE Products(
	id int IDENTITY NOT NULL,
	name nvarchar(250) NULL,
	code varchar(10) NULL,
	price BIGINT NULL,
	image nvarchar(max) NULL,
	description nvarchar(500) NULL,
	detail NTEXT NULL,
	quantity int NULL,
	createdDate datetime NULL,
	createdBy NVARCHAR(50),
	categoryId INT,
	producerId INT
    CONSTRAINT PK_Products PRIMARY KEY(id),
	CONSTRAINT FK_categoryId FOREIGN KEY(categoryId) REFERENCES dbo.Categories(id),
	CONSTRAINT FK_producerId FOREIGN KEY(producerId) REFERENCES dbo.Producer(id)
 )
 GO

 




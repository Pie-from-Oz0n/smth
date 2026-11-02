create table roles (
ID_role INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
ID_name NVARCHAR (15) NOT NULL
);

create table users (
ID_user INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
name NVARCHAR(100) NOT NULL,
second_name NVARCHAR(100) NOT NULL,
phone NVARCHAR(15) NOT NULL,
email NVARCHAR(100) NOT NULL,
password NVARCHAR(255) NOT NULL,
reg_date DATETIME NOT NULL,
fk_ID_role INT NOT NULL REFERENCES Roles(ID_role)
);

create table environmental_class(
ID_environmental_class INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
environmental_class_name NVARCHAR(100) NOT NULL
);

create table fuel_and_prices (
ID_fuel INT PRIMARY KEY IDENTITY (10,10) NOT NULL,
mark NVARCHAR(100) NOT NULL,
fk_ID_environmental_class INT NOT NULL REFERENCES environmental_class(ID_environmental_class),
price_per_liter DECIMAL NOT NULL,
remaining_amount DECIMAL 
);

create table AZS (
ID_AZS INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
AZS_name NVARCHAR(255) NOT NULL,
adress NVARCHAR(255) NOT NULL,
AZS_count INT NOT NULL,
work_hour NVARCHAR(255) NOT NULL
);

create table payment(
ID_payment INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
payment_type NVARCHAR(50) NOT NULL

);

create table sales(
ID_sale INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
sale_time DATETIME NOT NULL,
fk_ID_AZS INT NOT NULL REFERENCES AZS(ID_AZS),
ID_seller INT NOT NULL REFERENCES users(ID_user),
ID_buyer INT NOT NULL REFERENCES users(ID_user),
fk_ID_fuel INT NOT NULL REFERENCES fuel_and_prices(ID_fuel),
volume DECIMAL NOT NULL,
sale_sum MONEY NOT NULL,
fk_ID_payment INT NOT NULL REFERENCES payment(ID_payment),
);

select * from [dbo].[roles$]
select * from [dbo].[users$]
select * from [dbo].[environmental_class$]
select * from [dbo].[fuel_and_prices$]
select * from [dbo].[payment$]
select * from [dbo].[sales$]
select * from [dbo.AZS$]
use master
go
--1. tạo database
create database asm_java5
go
use  asm_java5
go

/*create table Categories(
	id int identity(1,1) primary key,
	name nvarchar(50) not null,
);
go
*/



create table Products(
	Id int identity(1,1) primary key,
	Names nvarchar(50) not null,
	Images varchar(max),
	Price float,
	Available bit, --1.hiển thị 0. ẩn đi
	--Foreign key(Categoryid) references Categories(id)
);

create table Accounts(
	Username varchar(50) primary key,
	Password varchar(50),
	Fullname nvarchar(50),
	Email varchar(50),
	Photo varchar(50),
	Activated bit, --1.active 0.deactive
	Admin bit --1. admin 0.user
);

go

/*create table Orders(
	Id int identity(1,1) primary key,
	Username varchar(50),
	CreateDate date,
	Address nvarchar(100),
	Foreign key (Username) references Accounts(Username)
);

go*/


create table Orders(
	Id int identity(1,1) primary key,
	Username varchar(50),
	create_date date,
	Address nvarchar(100),
	Foreign key (Username) references Accounts(Username)
);

go





/*create table orderDetails(
	Id int identity(1,1) primary key,
	Orderid int,
	Productid int,
	Price float,
	Quantity int
	Foreign key(Orderid) references Orders(id),
	Foreign key(Productid) references Products(id)

);*/

create table order_details(
    Id int identity(1,1) primary key,
    Order_id int, -- Thay thế "Orderid" bằng "Order_id"
    Product_id int, -- Thay thế "Productid" bằng "Product_id"
    Price float,
    Quantity int,
    Foreign key(Order_id) references Orders(Id), -- Sửa lại tên cột tham chiếu
    Foreign key(Product_id) references Products(Id) -- Sửa lại tên cột tham chiếu
);




-- Insert data into Categories table
/*insert into Categories (id, name) values
('C001', 'Electronics'),
('C002', 'Books'),
('C003', 'Clothing');*/

-- Insert data into Products table
insert into Products (Names, Images, Price,Available) values
('Iphone 13', '/image/0024430_iphone-13_240.png', 699.99, 1),
('Iphone 15 128G', '/image/0024431_iphone-15-128gb_240.png', 999.99,  1),
('Iphone 15 plus 128GB', '/image/0020317_iphone-15-plus-128gb_240.webp', 19.99 , 1),
('Iphone 15 pro', '/image/0022266_iphone-15-pro-max-256gb_240.png', 9.99,  1),
('iPad mini 6', '/image/0000593_ipad-mini-6_240.png', 19.99,  1),
('iPad Air 4', '/image/0000594_ipad-air-4_240.png', 29.99,  1),
('iPad gen 9 10.2 inch WiFi 64GB', '/image/0006205_ipad-gen-9-102-inch-wifi-64gb_240.png', 39.99,  1),
('iPad Gen 10 th 10.9 inch WiFi 64GB', '/image/0009725_ipad-gen-10-th-109-inch-wifi-64gb_240.png', 49.99,  1);



-- Insert data into Accounts table
insert into Accounts (Username, Password, Fullname, Email, Photo, Activated, Admin) values
('user1', 'password1', 'John Doe', 'john@example.com', 'john.jpg', 1, 0),
('user2', 'password2', 'Jane Smith', 'jane@example.com', 'jane.jpg', 1, 0),
('admin', 'adminpass', 'Admin User', 'admin@example.com', 'admin.jpg', 1, 1);

-- Insert data into Orders table
insert into Orders (Username, create_date, Address) values
('user1', '2024-05-01', '123 Main St, Cityville'),
('user2', '2024-05-02', '456 Elm St, Townsville');

-- Insert data into OrderDetails table
insert into order_details (Order_id, Product_id, Price, Quantity) values
(1, 1, 699.99, 1), -- Order 1 for Smartphone
(1, 4, 9.99, 2), -- Order 1 for 2 Novels
(2, 2, 999.99, 1), -- Order 2 for Laptop
(2, 3, 19.99, 3); -- Order 2 for 3 T-Shirts


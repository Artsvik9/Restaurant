-- database creation

CREATE DATABASE Restaurant;
USE Restaurant;


-- table creation 


CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Budget DECIMAL(10, 2) NOT NULL,
		CONSTRAINT CHK_Budget CHECK (Budget >= 0)
);


CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL CHECK (Amount >= 0),
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL 
		CHECK (PaymentMethod IN ('Cash', 'Card')),
    PaymentStatus VARCHAR(50) NOT NULL 
		DEFAULT 'Pending' 
		CHECK (PaymentStatus IN ('Pending', 'Approved', 'Denied')),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TheTable (
    TableNumber INT PRIMARY KEY,
    Capacity INT NOT NULL 
		CHECK (Capacity > 0),
    TableStatus VARCHAR(50) 
		DEFAULT 'Available' 
		CHECK (TableStatus IN ('Available', 'Not Available')),
    Location VARCHAR(255) NOT NULL 
		CHECK (Location IN ('Main Dining Area', 'Patio', 'Bar Area', 'Private Room'))
);


CREATE TABLE Reservation (
    ReserveID INT PRIMARY KEY,
    ReserveDate DATE NOT NULL,
    TableNumber INT NOT NULL,
    PeopleCount INT NOT NULL
		CHECK (PeopleCount > 0),
    CustomerID INT NOT NULL,
    FOREIGN KEY (TableNumber) REFERENCES TheTable(TableNumber) 
		ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    JobPosition VARCHAR(30) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL 
		CHECK (Salary >= 0),
    ReportsTo INT,
    FOREIGN KEY (ReportsTo) REFERENCES Employee(EmployeeID) 
		ON DELETE CASCADE ON UPDATE CASCADE
	

);

CREATE TABLE Orders (
    OrderNumber INT PRIMARY KEY,
    DateCreated DATE NOT NULL,
    DateCompleted DATE,
    OrderStatus VARCHAR(50) NOT NULL,
    Comments TEXT,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    Creates INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
		ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) 
		ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Creates) REFERENCES Employee(EmployeeID) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	
    CONSTRAINT CHK_OrderStatus CHECK (OrderStatus IN ('Pending', 'Completed', 'Cancelled'))
);


CREATE TABLE Menu (
    MenuID INT PRIMARY KEY,
    MenuType VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE MenuItem (
    ID INT PRIMARY KEY,
    MenuID INT NOT NULL,
    ItemName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL 
		CHECK (Price > 0),
    Descriptions TEXT,
    Quantity INT 
		CHECK (Quantity >= 0),
    FOREIGN KEY (MenuID) REFERENCES Menu(MenuID) 
		ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE OrderItem (
    OrderNumber INT NOT NULL,
    ID INT NOT NULL,
    Quantity INT NOT NULL
		CHECK (Quantity > 0),
    PRIMARY KEY (OrderNumber , ID),
    FOREIGN KEY (OrderNumber) REFERENCES Orders (OrderNumber) 
		ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID) REFERENCES MenuItem (ID) 
		ON DELETE CASCADE ON UPDATE CASCADE
);





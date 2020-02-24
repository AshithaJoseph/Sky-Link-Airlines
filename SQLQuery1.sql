
create table Customers (
	Id INT identity(1,1) PRIMARY KEY NOT NULL,
	First_name VARCHAR(50) NOT NULL,
	Last_name VARCHAR(50) NOT NULL,
	Gender VARCHAR(50) NOT NULL,
	Dob DATE NOT NULL,
	Passport VARCHAR(50) NOT NULL,
	UserId nvarchar(max) NOT NULL
);
create table Bookings (
	Id int identity(1,1) primary key,
	Customer_id INT FOREIGN KEY references customers(id),
	Booking_no VARCHAR(50),
	Journey_date DATE,
	Origin VARCHAR(50),
	Destination VARCHAR(50)
);

create table Flights (
	Id INT identity(1,1) primary key,
	Flight_no VARCHAR(50),
	Travel_date DATE,
	Origin VARCHAR(50),
	Destination VARCHAR(50),
	Depart_time VARCHAR(50),
	Arrival_time VARCHAR(50)
);
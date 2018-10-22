create database library;
use library;
create table library(
  libraryCode nvarchar(20) NOT NULL ,
  school NVARCHAR(250) NOT NULL ,
  phone NVARCHAR(13) NOT NULL ,
  address NVARCHAR (512) NOT NULL ,
  employeeQuantity INT(100),
  PRIMARY KEY (libraryCode)
);

create table employees(
  employeeNumber INT NOT NULL AUTO_INCREMENT,
  employeeName NVARCHAR(255) NOT NULL ,
  position NVARCHAR(255) NOT NULL ,
  phone nvarchar(13) NOT NULL ,
  email nvarchar(100) not null ,
  libraryCode NVARCHAR(20),
  PRIMARY KEY (employeeNumber),
  FOREIGN KEY (libraryCode) REFERENCES library(libraryCode)
);

create table students(
  studentNumber INT NOT NULL auto_increment,
  studentName NVARCHAR(255) NOT NULL ,
  phone NVARCHAR(13) NOT NULL ,
  address NVARCHAR (512) NOT NULL ,
  email NVARCHAR (100) NOT NULL ,
  image NVARCHAR (100) NOT NULL ,
  employeeNumber INT (10),
  PRIMARY KEY (studentNumber),
  FOREIGN KEY (employeeNumber) REFERENCES employees(employeeNumber)
);

create table category(
  categoryNumber INT NOT NULL AUTO_INCREMENT,
  categoryName NVARCHAR(255) NOT NULL ,
  placement NVARCHAR(255),
  PRIMARY KEY (categoryNumber)
);

create table books(
  bookNumber INT NOT NULL AUTO_INCREMENT,
  bookName NVARCHAR(255) NOT NULL ,
  author NVARCHAR(255),
  publicsher NVARCHAR(255),
  quantity INT(20),
  categoryNumber INT NOT NULL ,
  primary key (bookNumber),
  foreign key (categoryNumber) REFERENCES category(categoryNumber)
);

create table registerBorrowAndReturn(
  registerNumber INT NOT NULL AUTO_INCREMENT,
  status BOOLEAN NOT NULL ,
  limitQuantity INT(10) DEFAULT 5,
  borrowNumber INT NOT NULL ,
  studentNumber INT NOT NULL ,
  primary key (registerNumber),
  foreign key (studentNumber) REFERENCES students(studentNumber)
);
ALTER table registerBorrowAndReturn Add foreign key (borrowNumber)
REFERENCES borrow(borrowNumber) ;
ALTER table registerBorrowAndReturn
  Add historyNumber INT NOT NULL ,
  ADD foreign key (historyNumber) REFERENCES historyBorrow(historyNumber) ;

create table borrow(
  borrowNumber INT NOT NULL AUTO_INCREMENT,
  quantity INT(20) DEFAULT 1,
  amount INT(255) NOT NULL ,
  bookNumber INT NOT NULL ,
  primary key (borrowNumber),
  foreign key (bookNumber) REFERENCES books(bookNumber)
);

create table returnBook(
  returnNumber INT AUTO_INCREMENT,
  registerNumber INT NOT NULL ,
  returnDate DATE NOT NULL ,
  overdue INT(10) DEFAULT 0,
  fines INT(255) DEFAULT 0,
  primary key (returnNumber),
  foreign key (registerNumber) REFERENCES registerBorrowAndReturn(registerNumber)
);

create table historyBorrow(
  historyNumber INT NOT NULL AUTO_INCREMENT,
  quantityBorrowed INT(20) DEFAULT 0,
  quantityReturned INT(20) DEFAULT 0,
  fines INT(255) DEFAULT 0,
  quantityNotRedturned INT(20) DEFAULT 0,
  studentNumber INT,
  primary key (historyNumber),
  foreign key (studentNumber) references students(studentNumber)
);
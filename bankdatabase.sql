create database bankdatabase;
use bankdatabase;
create table users(
                      id int primary key auto_increment,
                      first_name varchar(1000),
                      email varchar(1000),
                      date_of_birth varchar(1000),
                      user_password varchar(1000),
                      accountno int,
                      balance float,
                      isAdmin bool
);

insert into users(first_name, email, date_of_birth, user_password, accountno, balance, isAdmin) values('admin', 'admin@gmail.com', '2001-03-09', 'pass', 12345, 1000.0, true);

create table contacttable(
                             id int primary key auto_increment,
                             first_name varchar(100),
                             email varchar(1000),
                             message text
);

create table transfer(
                         id int primary key auto_increment,
                         fromusername varchar(100),
                         accountno int,
                         amount float
);

create table loans(
                      id int primary key auto_increment,
                      accountno int,
                      first_name varchar(100),
                      amount float
);

create table newsletter(
    email varchar(100)
);
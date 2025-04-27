--Library Management System Project

--Creating branch table

Drop table if exists branch 
Create table branch 
	(
		branch_id varchar(20) Primary Key,
		manager_id varchar(10),
		branch_address varchar(30),
		contact_no varchar(25)
	)

--Creating employees table

Drop table if exists employees
Create table employees
	(
	emp_id VARCHAR(15) Primary Key,
	emp_name VARCHAR(20),
	position VARCHAR(15),
	salary float,
	branch_id VARCHAR(20) --FK
	)

--Creating books table

Drop table if exists books
Create table books
	(
		isbn varchar(20) primary key,	
		book_title varchar(75),
		category varchar(25),
		rental_price float,
		status varchar(15),
		author varchar(35),
		publisher varchar(55)
	)

--Creating members table

drop table if exists members
create table members
	(
		member_id varchar(10) primary key,
		member_name varchar(25),
		member_address varchar(75),
		reg_date date
	)

--Creating issued_status table

Drop table if exists issued_status
create table issued_status
	( 
		issued_id varchar(10) primary key,
		issued_member_id varchar(10), --FK
		issued_book_name varchar(75),
		issued_date date,
		issued_book_isbn varchar(20), --FK
		issued_emp_id varchar(15) --FK
	)	

--Creating table return_status

drop table if exists return_status
Create table return_status
	(
		return_id varchar(10) primary key,
		issued_id varchar(10),
		return_book_name varchar(75),
		return_date date,
		return_book_isbn varchar(20)
	)


-- Foreign Key

Alter table issued_status
add constraint fk_members
foreign key (issued_member_id)
references members(member_id)

Alter table issued_status
add constraint fk_books
foreign key (issued_book_isbn)
references books(isbn)

Alter table issued_status
add constraint fk_employees
foreign key (issued_emp_id)
references employees(emp_id)

Alter table employees
add constraint fk_branch
foreign key (branch_id)
references branch(branch_id)

Alter table employees
add constraint fk_branch
foreign key (branch_id)
references branch(branch_id)

Alter table return_status
add constraint fk_issued_id
foreign key (issued_id)
references issued_status(issued_id)


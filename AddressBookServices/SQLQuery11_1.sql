------------UC1 CREATE DATABASE-------------
CREATE DATABASE ADDRESSBOOK_SERVICES;

-------UC2-create table for addressbook servoces -----------
CREATE TABLE AddressBook(
FirstName varchar(200),
LastName varchar(200),
Address varchar(1000),
City char(100),
State char(100),
Zip bigint,
PhoneNumber bigint,
Email varchar(200)

);

INSERT INTO AddressBook
VALUES('Shree','Gowri','7th cross','Bangaluru','Karnataka',560065,5243454345,'abc@gmail.com'),
('Mahesh','Koder','8th cross','Mysore','Karnataka',560066,1323567775,'def@gmail.com'),
('Gagana','Gowri','9th cross','Hydrabad','Telangana',450065,5478908765,'ghi@gmail.com'),
('Shree','karan','4th cross','Jaipur','Rajasthan',660065,5243458745,'jkl@gmail.com');

UPDATE AddressBook set PhoneNumber=1234567890 where FirstName='Shree';
UPDATE AddressBook set State='Maharastra',City='Mumbai' where FirstName='Mahesh';

select * from AddressBook;

Delete From AddressBook where LastName='karan';

Select * from AddressBook;

select * from AddressBook;
-----------inserted some more data to execute the uc--------------
INSERT INTO AddressBook
Values('shankar','rana','9th main','Bangaluru','Karnataka',560087,1234567897,'jkl@gmail.com'),
('karan','Kumar','10th main','Bangaluru','Karnataka',560097,1234567807,'mno@gmail.com'),
('hasini','renyu','11th main','Hydrabad','Telangana',561237,1653267897,'pqr@gmail.com');
-------------UC6-retrive the person bolonging to coty or state--------------
SELECT FirstName From AddressBook where  City='Bangaluru' or State='Karnataka';

-------UC7-Ability to count the Size of the addressBook by state and city------------
SELECT COUNT(FirstName) as AddressBookCount,State,City from AddressBook group by State,City;

----------UC8 Retrive the entires sorted alphabetically by the persons name for given city--------
SELECT FirstName,City from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by firstname--------
SELECT * from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by City--------
SELECT * from AddressBook ORDER BY City;

-----UC9-Identify addressbook with name and type----------
ALTER TABLE AddressBook
ADD Type Varchar(200);

Select * from AddressBook;
Insert into AddressBook(FirstName,LastName ,Address,City,State,Zip,PhoneNumber,Email) Values('Vagisha','Vignesh','12th main','Bengaluru','Karnataka',456765,9876545678,'stu@gmail.com') where FirstName='Null';

UPDATE AddressBook set Type='Friends' where FirstName='Gagana';
UPDATE AddressBook set Type='Proffession' where FirstName='karan';
UPDATE AddressBook set Type='Friends' where FirstName='hasini';
UPDATE AddressBook set Type='Profession' where FirstName='Shankar';
UPDATE AddressBook set Type='Family' where FirstName='Mahesh';


---------UC10-Ability to get the number count by persons-----------
SELECT COUNT(Type) as NumberOfPersons from AddressBook ;

----------uc11 - ability to add the person to both the family and friends----
INSERT INTO AddressBook
VALUES('Sita','Rama','6th cross','Wizag','Andrapradesh',765434,457545809,'vwx@gmail.com','Family'),
('Sita','Rama','6th cross','Wizag','Andrapradesh',765434,457545809,'vwx@gmail.com','Friends')

Select * from AddressBook;


-------------UC12-Craeting separete table for the AddrssBook---------------
CREATE TABLE Person(
PersonId int IDENTITY PRIMARY KEY,
FirstName varchar(200),
LastName varchar(200),
PhoneNumber int
);
select * from Person;
insert into Person values('shree','gowri',1234567890);
insert into Person values('Mahesh','Koder',1323567775);
insert into Person values('shankar','rana',1234567897);

create table PersonType(
PersonId int foreign key   REFERENCES   Person(PersonId ),
Type varchar(200));

insert into PersonType
values(4,'Family'),(9,'Friends'),(11,'Professional');

select * from PersonType;

CREATE TABLE PersonAddress(
PersonId int foreign key   REFERENCES   Person(PersonId ),
Address varchar(200),
Zip int ,
City varchar(20),
State varchar(200)
);
select * from PersonAddress;
insert into PersonAddress 
values(4,'1st cross',234,'Bengaluru','Karnataka'),(9,'2nd cross',345,'Jaipur','Rajasthan'),(11,'3rd cross',567,'Mumbai','Maharastra');


select * from Person;
select * from PersonType;
select * from PersonAddress;




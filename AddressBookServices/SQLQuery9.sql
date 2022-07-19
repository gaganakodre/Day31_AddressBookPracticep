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

Delete from AddressBook where LastName is NULL;




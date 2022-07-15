select * from AddressBook;
-----------inserted some more data to execute the uc--------------
INSERT INTO AddressBook
Values('shankar','rana','9th main','Bangaluru','Karnataka',560087,1234567897,'jkl@gmail.com'),
('karan','Kumar','10th main','Bangaluru','Karnataka',560097,1234567807,'mno@gmail.com'),
('hasini','renyu','11th main','Hydrabad','Telangana',561237,1653267897,'pqr@gmail.com');
-------------UC6-retrive the person bolonging to coty or state--------------
SELECT FirstName From AddressBook where  City='Bangaluru' or State='Karnataka';
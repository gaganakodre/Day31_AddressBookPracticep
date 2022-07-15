-------UC7-Ability to count the Size of the addressBook by state and city------------
SELECT COUNT(FirstName) as AddressBookCount,State,City from AddressBook group by State,City;


CREATE TABLE  Customer ( id int Primary Key, first_name varchar(128) not null, last_name varchar(128) not null, email_address varchar(128) not null, phone_number varchar(128) not null,   UNIQUE  (email_address),UNIQUE (phone_number) );

 CREATE TABLE Policy (Policy_number int not null Primary Key, customer_id int not null , Premium decimal(10,2) , Coverage varchar(128) not null, FOREIGN KEY (customer_id) REFERENCES Customer(id));

CREATE TABLE Home ( id int Primary Key,  Street_address varchar(128) not null, City varchar(128) not null, State varchar(128) not null, Zip varchar(128) not null, Policy_number  int,  foreign key (Policy_number) References Policy(Policy_number)) ;

CREATE TABLE Incident (id  int not null Primary Key,  Home_id int not null, Damage_info varchar(1024), Date date not null, Damage_amount decimal (10,2) , Payment_date date ,   FOREIGN KEY (Home_id) REFERENCES Home(id));

CREATE TABLE Payment (id  int not null Primary Key, Payment_date date not null, Policy_number int not null,   Amount decimal(10,2) not null ,  FOREIGN KEY (Policy_number) REFERENCES Policy(Policy_number));

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Mary','Liger', 'Mary@yahoo.com', '722-132-7215');

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Joe','Wringwald', 'Joe@aol.com', '650-555-7215');

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Joe','Mars', 'Joe@me.com', '408-455-7222'); 

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Bob','Mars', 'ligma@me.com', '408-655-1409'); 

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Ronald','Mac', 'Ron@yahoo.com', '650-455-7222'); 

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Vini','West', 'Vini@Aol.com', 
'408-431-6969'); 

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Lucas','Desert', 'Lucas@Gmail.com', '');

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Omar','Bull', 'Omar@Gmail.com', '566-473-8591'); 


Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Chris','Breezy', 'Breezy@Aol.com', '408-055-9326'); 

Insert into Customer(first_name, last_name, email_address, phone_number) VALUES('Bob','Mars', 'Bob@Aol.com', '755-342-6782'); 


Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(1,1,100.00, 'Fire'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(2,2,500.00, 'Comprehensive'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(3,3,1200.00, 'Theft'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(4,4,100.00, 'Fire'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(5,5,2000.00, 'Comprehensive'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(6,6,2000.00, 'Earthquake'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(7,7,600.00, 'Theft'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(8,8,7000.00, 'Comprehensive'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(9,9,300.00, 'Tsunami'); 

Insert into Policy(Policy_number,customer_id, Premium, Coverage) VALUES(10,10, 2000.00, 'Comprehensive'); 





 Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(1,'6208 Outlook', 'Oakland','CA','94605',1); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(2,'3801 San Pablo Ave APT 308', 'Emeryville','CA','94608',2); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(3,'2550 Dana St APT 6G', 'Berkeley','CA','94704',2); 

 Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(4,'1400 Mission St APT 706', 'San Francisco','CA','94103',2);


Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(5,'2450 89th Ave', 'Oakland','CA','94605',3);


Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(6,'3515 Redding St,', 'Oakland','CA','94619',3); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(7,'2901 Macarthur Blvd APT 304', 'Oakland','CA','94602',4); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(8,'311 S Fair Oaks Ave', 'Sunnyvale','CA','94086',7); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(9,'675 Ash Ct', 'Campbell','CA','95008',6); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(10,'1805 White Oaks Rd', 'Campbell','CA','95008',6); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(11,'4469 Thistle Dr', 'San Jose','CA','95136',5); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(12,'2061 Garzoni Pl', 'Santa Clara','CA','95054',8); 

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(13,'181 Clermont Ave APT 501', 'Brooklyn','NY','11205',9);

Insert into Home(id, Street_address, City, State, Zip, Policy_number) VALUES(14,'4110 Paces Ferry Rd NW', 'Atlanta','GA','30327',10); 



Insert into Incident(id,Home_id, Damage_info, Date, Damage_amount, Payment_date) VALUES(1,14, 'Flooding  causing structural damage','2020-03-02', 150000.00, '2020-03-09'); 

Insert into Incident(id,Home_id, Damage_info, Date, Damage_amount, Payment_date) VALUES(2,7, 'Earthquake causing structural damage','2020-12-07', 150000.00, '2021-03-07'); 

Insert into Incident(id,Home_id, Damage_info, Date, Damage_amount) VALUES(3,14, 'Tornado damage','2020-11-03', 200000.00); 

Insert into Incident(id,Home_id, Damage_info, Date, Damage_amount, Payment_date) VALUES(4,2, 'Earthquake causing structural damage','2020-12-07', 200000.00, '2021-03-07'); 


Insert into Incident(id,Home_id, Damage_info, Date, Damage_amount, Payment_date) VALUES(5,2, 'Electrical fire caused in kitchen','2020-09-04', 300.00, '2020-12-06'); 

 Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(1,'2019-011-01', '1', '100.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(2,'2020-11-01', '1', '100.00');

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(3,'2021-10-17', '3', '1200.00'); 


Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(4,'2020-04-17', '3', '1200.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(5,'2020-01-01', '2', '500.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(6,'2020-10-17', '3', '1200.00');

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(7,'2020-10-17', '4', '100.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(8,'2020-01-01', '5', '2000.00');

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(9,'2020-06-09', '6', '2000.00');

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(10,'2020-03-20', '7', '600.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(11,'2020-01-01', '8', '2000.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(12,'2020-04-17', '9', '300.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(13,'2021-04-17', '9', '300.00'); 

Insert into Payment(id,Payment_date, Policy_number, Amount) VALUES(14,'2020-07-07', '10', '2000.00'); 


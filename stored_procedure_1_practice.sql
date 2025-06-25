# DATABASE QUERIES
show databases;
use tailor;
show tables;
select * from customer;
call get_customer_info;
desc customer;
call get_customer('SEETA');
select * from measurements;
desc measurements;
call get_measure('15');

#STORED PROCEDURES 
  
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer_info`()
BEGIN
select * from customer;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer`(in customer_name varchar(50))
BEGIN
select * from customer where customer.cname = customer_name;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_measure`(in armlength varchar(10))
BEGIN
select * from measurements where measurements.armlength = armlength;
END

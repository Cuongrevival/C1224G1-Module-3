DELIMITER //
create procedure findAllCustomers()
BEGIN
select * from Customers;
END //

DELIMITER ;
call findAllCustomers();

delimiter // 
drop procedure if exists `findAllCustomers` //

create procedure findAllCustomers()
begin
select * from Customers where customerNumber = 175;
end //

call findAllCustomers();
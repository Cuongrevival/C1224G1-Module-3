explain select * from customers where customerName = 'Land of Toys Inc.';

explain SELECT  
    *
FROM
    Customers
WHERE
    contactFirstName = 'Jean' or contactFirstName = 'King';
    
alter table Customers 
add index idx_customerName(customerName);

alter table Customers
add index idx_full_name(contactFirstName, contactLastName);

alter table customers
drop index idx_full_name;


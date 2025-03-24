insert into Customer (cName, cAge) values
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

insert into Orders (cID, oDate, oTotalPrice) values
(1, '2006-03-21', null),
(2, '2006-03-23', null),
(1, '2006-03-16', null);

insert into Product (pName, pPrice) values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);
select*from Product;
insert into OrderDetail (oID, pID, odQTY) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);


select * from Orders;

select c.cName, p.pName from Customer c
join Orders o on c.cID = o.cID 
join OrderDetail od on o.oID = od.oID
join Product p on od.pID = p.pID
where od.odQTY <> 0;

select c.cName from Customer c left join Orders o on c.cID = o.cID where o.cID IS NULL; 

select o.oID, o.oDate, 
SUM(od.odQTY * p.pPrice) AS TotalPrice
from Orders o 
join OrderDetail od on o.oID = od.oID
join Product p on od.pID = p.pID
group by o.oID, o.oDate;

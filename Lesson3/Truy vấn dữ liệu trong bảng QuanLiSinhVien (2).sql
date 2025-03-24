select * from Student where StudentName like 'h%';
select * from Class where month(Startdate) = 12; 
select * from Subject where credit between 3 and 5;
update Student
set ClassID = 2 where StudentName = 'Hung';

select s.StudentName, su.SubName, m.Mark from Student s 
join Mark m on s.StudentID = m.StudentID 
join Subject su on m.SubID = su.SubID
order by m.Mark DESC, s.StudentName ASC;

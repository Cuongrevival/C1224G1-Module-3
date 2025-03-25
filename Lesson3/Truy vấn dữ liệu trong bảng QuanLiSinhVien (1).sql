select*from Student;

select*from Student where Status <>0;

select*from Subject where Credit <10;


select s.*, c.ClassName from Student s 
join Class c on s.ClassID = c.ClassID where c.ClassName like 'A1';

select s.StudentName, su.SubName, m.Mark  from Student s 
join Mark m on s.StudentID = m.StudentID 
join Subject su on m.SubID = su.SubID 
where su.SubName = 'CF';


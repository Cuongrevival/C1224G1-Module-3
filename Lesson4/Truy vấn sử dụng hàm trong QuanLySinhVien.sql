use QuanLySinhVien;

SELECT 
    Address, COUNT(StudentID) AS NumberOfStudents
FROM
    Student
GROUP BY address;

SELECT 
    su.SubName, AVG(m.Mark) AS AverageMark
FROM
    Mark m
        JOIN
    Subject su ON m.SubID = su.SubID
GROUP BY su.SubName
HAVING AVG(m.Mark) <> 0;

SELECT 
    s.StudentName, AVG(m.Mark) AS AverageMark
FROM
    Student s
        JOIN
    Mark m ON s.StudentID = m.StudentID
GROUP BY s.StudentName
HAVING AverageMark > 15;

SELECT 
    s.StudentName, AVG(m.Mark) AS AverageMark
FROM
    Student s
        JOIN
    Mark m ON s.StudentID = m.StudentID
GROUP BY s.StudentName
having AverageMark >= ALL(select AVG(Mark) from Mark group by Mark.StudentID);
SELECT 
    *
FROM
    Subject
WHERE
    Credit >= ALL (SELECT 
            Credit
        FROM
            Subject);
            
SELECT 
    su.SubName, MAX(m.Mark) AS MaxAverage
FROM
    Subject su
        JOIN
    Mark m ON su.SubID = m.SubID
GROUP BY su.SubName;

SELECT 
    s.*, AVG(m.Mark) AS AverageMark
FROM
    Student s
        LEFT JOIN
    Mark m ON s.StudentID = m.StudentID
GROUP BY s.StudentID, s.StudentName
ORDER BY AverageMark DESC;
WITH student_salary AS (
    SELECT s.id, s.Name, p.Salary
    FROM Students s
    INNER JOIN Packages p ON s.id =p.id
),
friend_salary AS (
    SELECT f.ID, p.Salary
    FROM Friends f
    INNER JOIN Packages p ON f.Friend_ID = p.ID
)

SELECT ss.Name
FROM student_salary ss
INNER JOIN friend_salary fs ON ss.ID = fs.ID
WHERE fs.Salary > ss.Salary
ORDER BY fs.Salary;
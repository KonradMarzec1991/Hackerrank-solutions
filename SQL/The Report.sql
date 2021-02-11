SELECT
    IF(g.Grade >= 8, s.Name, NULL) AS Name,
    g.Grade AS Grade,
    s.Marks AS Marks
FROM Students s, Grades g
WHERE s.Marks BETWEEN g.Min_Mark AND g.MAX_Mark
ORDER BY g.Grade DESC, s.Name;
SELECT id, name
FROM (
    SELECT
        s.hacker_id AS id,
        h.name AS name,
        COUNT(name) AS counter
    FROM Submissions s
    INNER JOIN Hackers h USING(hacker_id)
    INNER JOIN Challenges c USING(challenge_id)
    INNER JOIN Difficulty d USING(difficulty_level)
    WHERE d.score = s.score
    GROUP BY 1, 2
) AS TEMP
WHERE counter > 1
ORDER BY counter DESC, id
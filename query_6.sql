SELECT s.fullname, g.name
FROM students s 
LEFT JOIN groups g ON s.group_id = g.id
WHERE g.id = 1
ORDER BY s.fullname 
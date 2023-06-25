SELECT s.name, t.fullname 
FROM teachers t
LEFT JOIN subjects s ON t.id = s.teacher_id
ORDER  BY t.fullname
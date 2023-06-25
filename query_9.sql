SELECT s.name, stud.fullname
FROM subjects s
LEFT JOIN grades g ON g.subject_id  = s.id
LEFT JOIN students stud ON stud.id = g.student_id
WHERE stud.id = 11
GROUP BY s.name
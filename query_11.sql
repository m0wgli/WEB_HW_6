SELECT ROUND(AVG(g.grade), 2) as avg_grade, t.fullname as teacher_fullname, s.fullname as student_fullname
FROM grades g
LEFT JOIN students s ON g.student_id = s.id
LEFT JOIN subjects subj ON subj.id = g.subject_id
LEFT JOIN teachers t ON t.id = subj.teacher_id
WHERE s.id = 22 AND t.id = 3
GROUP BY t.fullname 

SELECT subj.name as subject, s.fullname as student_fullname, t.fullname as teacher_fullname
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN subjects subj ON subj.id = g.subject_id
LEFT JOIN teachers t ON t.id = subj.teacher_id
WHERE t.id = 2 AND s.id = 11
GROUP BY subj.name
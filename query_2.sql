SELECT subj.name , s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN subjects subj ON subj.id = g.subject_id
WHERE subj.id = 6
GROUP BY g.student_id 
ORDER BY avg_grade DESC 
LIMIT 1;
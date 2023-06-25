SELECT ROUND(AVG(g.grade), 2) as avg_grade, s.name, gr.name 
FROM grades g
LEFT JOIN subjects s ON s.id = g.subject_id 
LEFT JOIN students stud ON stud.id  = g.student_id
LEFT JOIN groups gr ON gr.id = stud.group_id
WHERE s.id = 6
GROUP BY gr.name

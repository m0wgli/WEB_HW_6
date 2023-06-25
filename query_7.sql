SELECT g.grade, gr.name, subj.name
FROM grades g
LEFT JOIN subjects subj ON subj.id = g.subject_id
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id
WHERE gr.id = 2 AND g.subject_id  = 7
ORDER BY g.grade

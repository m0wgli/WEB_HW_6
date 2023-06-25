SELECT g.grade, gr.name AS group_name, subj.name AS subject_name, g.date_of AS date_of_grade
FROM grades g
LEFT JOIN students s ON g.student_id = s.id
LEFT JOIN groups gr ON gr.id = s.group_id
LEFT JOIN subjects subj ON subj.id = g.subject_id
WHERE g.date_of = '2023-05-30' AND gr.id = 2
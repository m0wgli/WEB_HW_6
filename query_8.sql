SELECT ROUND(AVG(g.grade), 2) AS avg_grade, t.fullname, subj.name
FROM grades g
LEFT JOIN subjects subj ON g.subject_id = subj.id
LEFT JOIN teachers t ON t.id = subj.teacher_id
WHERE t.id = 2
GROUP BY subj.name
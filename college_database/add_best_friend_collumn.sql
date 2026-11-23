use college;

alter table students
add column best_friend int;

update students
set best_friend = 22
where first_name = 'Абдулбосит';

update students
set best_friend = 23
where first_name = 'Хадижат'

update students
set best_friend = 13
where first_name = 'Абукар'



INSERT INTO teachers (first_name, last_name) VALUES
('Сергей', 'Кузнецов')




INSERT INTO grades (student_id, subject_id, grade, grade_date)
SELECT id, 1, 2, '2026-11-10'
FROM students
WHERE first_name = 'Karoline' AND last_name = 'Johnson'

UNION ALL

SELECT id, 2, 2, '2026-11-15'
FROM students
WHERE first_name = 'Karoline' AND last_name = 'Johnson'

UNION ALL

SELECT id, 3, 2, '2026-11-20'
FROM students
WHERE first_name = 'Karoline' AND last_name = 'Johnson';
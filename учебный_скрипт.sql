
use college

-- находим студента по его имени/фамилии/id
select *
from students
where first_name = 'Станислав' and last_name = 'Попсуй'

-- находим дату создания и модификации профиля
SELECT
    id,
    first_name,
    last_name,
    created_at,
    updated_at
FROM students
WHERE id = 13

-- выводим все оценки студента
SELECT
    s.first_name,
    s.last_name,
    g.grade,
    g.grade_date,
    sj.name AS subject
FROM students s
JOIN grades g
    ON s.id = g.student_id
LEFT JOIN subjects sj
    ON g.subject_id = sj.id
WHERE s.id = 27
ORDER BY g.grade_date DESC



-- находим среднюю оценку студента
select s.id, first_name, last_name, (
	select avg(grade)
	from grades
	where student_id = 12
) as average_grade
from grades g
join students s
	on s.id = student_id
where s.first_name = 'Илья' and s.last_name = 'Алексеев'
group by s.id -- GROUP BY группирует студентов, чтобы
			   -- они не повторялись их оценки сложились
			   -- в одно число.

-- выводим все известные данные о студенте (+ среднюю оценку)
SELECT
    s.*,
    sg.group_name,
    (
        SELECT ROUND(AVG(g.grade), 2)
        FROM grades g
        WHERE g.student_id = s.id
    ) AS average_grade
FROM students s
JOIN student_groups sg
    ON s.group_id = sg.id
WHERE s.id = 12;

-- или

SELECT
    s.*, -- все столбцы из таблицы "students"
    sg.group_name,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN student_groups sg
    ON s.group_id = sg.id
LEFT JOIN grades g
    ON g.student_id = s.id
WHERE s.id = 12
GROUP BY s.id;

-- выводим всю информацию из таблицы "grades"
select s.first_name, s.last_name, sj.name, grade, grade_date
from grades g
join students s
	on s.id = student_id
join subjects sj
	on sj.id = subject_id
order by s.last_name

-- вычисляем среднюю оценку студентов
select student_id, first_name, last_name, round(AVG(grade), 1) as 'average grade'
from grades
join students s
	on s.id = student_id
group by student_id

-- выводим всю информацию о таблице "subjects"
select sj.id, sj.name, t.first_name, last_name
from subjects sj
join teachers t
	on t.id = teacher_id

-- находим максимальную оценку каждого студента
SELECT
    s.id,
    s.first_name,
    s.last_name,
    MAX(g.grade) AS max_grade
FROM grades g
JOIN students s
    ON s.id = g.student_id
GROUP BY s.id; 

-- выводим всех стедентов одной группы
select 
	s.first_name, 
	s.last_name, 
	sg.group_name
from students s
join student_groups sg
	on group_id = sg.id
where group_id = 3

-- выводим всех студентов из нескольких групп
select 
	s.first_name, 
	s.last_name, 
	sg.group_name
from students s
join student_groups sg
	on group_id = sg.id
where group_id = 3 or group_id = 4


-- сравниваем средний балл по группам
SELECT
    sg.group_name,
    ROUND(AVG(g.grade), 2) AS avg_grade -- Округляем средний балл до 2 знаков для красоты
FROM student_groups sg
LEFT JOIN students s ON s.group_id = sg.id
LEFT JOIN grades g ON g.student_id = s.id
GROUP BY sg.id, sg.group_name;	
	
	
	

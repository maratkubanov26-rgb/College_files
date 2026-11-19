INSERT INTO grades (grade, grade_date, student_id, subject_id)
VALUES
-- Алексеев Илья (ID 12)
(4, '2026-11-05', 12, 1),
(4, '2026-11-05', 12, 1),
(4, '2026-10-22', 12, 1),
(4, '2026-10-22', 12, 1),

-- Алибеков Расул (ID 13)
(5, '2026-11-05', 13, 1),
(5, '2026-11-05', 13, 1),
(4, '2026-10-29', 13, 1),
(5, '2026-10-29', 13, 1),

-- Алкамян Арсений (ID 14)
(5, '2026-11-05', 14, 1),
(5, '2026-11-05', 14, 1),
(5, '2026-10-29', 14, 1),
(5, '2026-10-29', 14, 1),
(5, '2026-10-22', 14, 1),

-- Вердиян Ашот (ID 16)
(5, '2026-11-05', 16, 1),
(5, '2026-11-05', 16, 1),
(5, '2026-10-29', 16, 1),
(4, '2026-10-29', 16, 1),
(5, '2026-10-22', 16, 1),
(5, '2026-10-22', 16, 1),

-- Мирзахметов Муслимбек (ID 17)
(4, '2026-11-05', 17, 1),
(5, '2026-10-29', 17, 1),
(5, '2026-10-29', 17, 1),
(5, '2026-10-22', 17, 1),
(5, '2026-10-22', 17, 1),

-- Митаева Хадижат (ID 18)
(4, '2026-11-05', 18, 1),
(4, '2026-11-05', 18, 1),
(4, '2026-10-29', 18, 1),

-- Мукарамов Абдулбосит (ID 19)
(5, '2026-10-29', 19, 1),
(5, '2026-10-29', 19, 1),

-- Попсуй Станислав (ID 20)
(5, '2026-10-29', 20, 1),
(5, '2026-10-22', 20, 1),
(5, '2026-10-22', 20, 1),

-- Пятигоров Александр (ID 21)
(5, '2026-11-05', 21, 1),
(5, '2026-10-29', 21, 1),
(5, '2026-10-22', 21, 1),

-- Савугина Кристина (ID 23)
(5, '2026-11-05', 23, 1),
(5, '2026-10-29', 23, 1),

-- Хомляк Станислав (ID 24)
(5, '2026-11-05', 24, 1),
(4, '2026-10-22', 24, 1),
(4, '2026-10-22', 24, 1),

-- Эстамиров Абукар (ID 27)
(5, '2026-11-05', 27, 1),
(4, '2026-10-29', 27, 1),
(5, '2026-10-29', 27, 1),
(4, '2026-10-22', 27, 1),
(4, '2026-10-22', 27, 1);

insert into students (first_name, last_name, group_id) VALUES ("KAROLINE", "JOHNSON", 1)

insert into subjects (name) values 
('English for IT'), 
('Machine Learning')


INSERT INTO grades (grade, grade_date, student_id, subject_id)
SELECT v.grade, v.grade_date, v.student_id, s.id
FROM (
    -- Алексеев Илья (ID 12)
    SELECT 4 AS grade, '2026-11-10' AS grade_date, 12 AS student_id UNION ALL
    SELECT 3, '2026-11-12', 12 UNION ALL
    SELECT 4, '2026-11-15', 12 UNION ALL

    -- Алибеков Расул (ID 13)
    SELECT 5, '2026-11-10', 13 UNION ALL
    SELECT 4, '2026-11-12', 13 UNION ALL
    SELECT 3, '2026-11-14', 13 UNION ALL
    SELECT 5, '2026-11-16', 13 UNION ALL

    -- Алкамян Арсений (ID 14)
    SELECT 5, '2026-11-10', 14 UNION ALL
    SELECT 5, '2026-11-12', 14 UNION ALL
    SELECT 4, '2026-11-14', 14 UNION ALL
    SELECT 3, '2026-11-15', 14 UNION ALL
    SELECT 5, '2026-11-17', 14 UNION ALL

    -- Вердиян Ашот (ID 16)
    SELECT 4, '2026-11-10', 16 UNION ALL
    SELECT 3, '2026-11-12', 16 UNION ALL
    SELECT 4, '2026-11-15', 16 UNION ALL

    -- Мирзахметов Муслимбек (ID 17)
    SELECT 5, '2026-11-10', 17 UNION ALL
    SELECT 4, '2026-11-12', 17 UNION ALL
    SELECT 3, '2026-11-14', 17 UNION ALL
    SELECT 4, '2026-11-17', 17 UNION ALL

    -- Митаева Хадижат (ID 18)
    SELECT 4, '2026-11-10', 18 UNION ALL
    SELECT 5, '2026-11-12', 18 UNION ALL
    SELECT 3, '2026-11-15', 18 UNION ALL
    SELECT 4, '2026-11-17', 18 UNION ALL

    -- Мукарамов Абдулбосит (ID 19)
    SELECT 3, '2026-11-10', 19 UNION ALL
    SELECT 4, '2026-11-12', 19 UNION ALL
    SELECT 4, '2026-11-15', 19 UNION ALL

    -- Попсуй Станислав (ID 20)
    SELECT 5, '2026-11-10', 20 UNION ALL
    SELECT 3, '2026-11-12', 20 UNION ALL
    SELECT 4, '2026-11-14', 20 UNION ALL
    SELECT 5, '2026-11-16', 20 UNION ALL

    -- Пятигоров Александр (ID 21)
    SELECT 4, '2026-11-10', 21 UNION ALL
    SELECT 3, '2026-11-12', 21 UNION ALL
    SELECT 5, '2026-11-15', 21 UNION ALL

    -- Савугина Кристина (ID 23)
    SELECT 5, '2026-11-10', 23 UNION ALL
    SELECT 4, '2026-11-12', 23 UNION ALL
    SELECT 3, '2026-11-14', 23 UNION ALL
    SELECT 5, '2026-11-17', 23 UNION ALL

    -- Хомляк Станислав (ID 24)
    SELECT 3, '2026-11-10', 24 UNION ALL
    SELECT 4, '2026-11-12', 24 UNION ALL
    SELECT 3, '2026-11-15', 24 UNION ALL
    SELECT 4, '2026-11-17', 24 UNION ALL

    -- Эстамиров Абукар (ID 27)
    SELECT 4, '2026-11-10', 27 UNION ALL
    SELECT 3, '2026-11-12', 27 UNION ALL
    SELECT 4, '2026-11-14', 27 UNION ALL
    SELECT 5, '2026-11-16', 27 UNION ALL

    -- KAROLINE JOHNSON
    SELECT 4, '2026-11-10', (SELECT id FROM students WHERE first_name = 'KAROLINE' AND last_name = 'JOHNSON' ORDER BY id DESC LIMIT 1) UNION ALL
    SELECT 3, '2026-11-12', (SELECT id FROM students WHERE first_name = 'KAROLINE' AND last_name = 'JOHNSON' ORDER BY id DESC LIMIT 1) UNION ALL
    SELECT 5, '2026-11-15', (SELECT id FROM students WHERE first_name = 'KAROLINE' AND last_name = 'JOHNSON' ORDER BY id DESC LIMIT 1)
) AS v
CROSS JOIN (
    SELECT id FROM subjects WHERE name = 'Machine Learning' ORDER BY id DESC LIMIT 1
) AS s
WHERE v.student_id IS NOT NULL AND s.id IS NOT NULL;

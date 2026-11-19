create database college;

use college;

CREATE TABLE student_groups (
    id INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL UNIQUE
);

create table teachers (
	id int auto_increment primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null
);

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    created_at timestamp DEFAULT CURRENT_timestamp,
    updated_at timestamp default CURRENT_TIMESTAMP
   		on update current_timestamp,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES student_groups(id)
	    ON DELETE RESTRICT
	    ON UPDATE cascade  
);

create table attendance (
	id int auto_increment primary key,
	status ENUM('PRESENT', 'ABSENT', 'LATE', 'EXCUSED') NOT NULL,
	attendance_date date default (CURRENT_date),
	student_id int not null,
	foreign key (student_id)
		references students(id)
		on delete cascade
		on update cascade
);

create table subjects (
	id int auto_increment primary key,
	name varchar(100) not null,
	teacher_id int,
	foreign key (teacher_id) 
		references teachers(id)
		on delete set null
		on update cascade
	);

create table grades (
	id int auto_increment primary key,
	grade int check (grade between 2 and 5),
	grade_date date default (CURRENT_DATE),
	student_id int not NULL,
	foreign key (student_id)
		references students(id)
		on delete CASCADE
		on update cascade,
	subject_id int,
	foreign key (subject_id)
		references subjects(id)
		on delete set NULL
		on update cascade
);

INSERT INTO student_groups (group_name) VALUES
('9/1-КБ-25/1'),
('11/1-КБ-26/1'),
('9/1-РПО-25/1'),
('11/1-РПО-26/1');

INSERT INTO students (last_name, first_name, group_id) VALUES
('Алейников', 'Мансур',
    (SELECT id FROM student_groups
     WHERE group_name = '9/1-КБ-25/1')),
('Барбашин', 'Андрей', 1),
('Богатырев', 'Тимур', 1),
('Гатаулина', 'Милена', 1),
('Комаров', 'Ян', 1),
('Мельников', 'Никита', 1),
('Скелин', 'Никита', 1),
('Томашевский', 'Артем', 1),
('Швыдко', 'Богдан', 1),
('Давидян', 'Надежда', 2),
('Лейман', 'Адам', 2),
('Алексеев', 'Илья', 3),
('Алибеков', 'Расул', 3),
('Алкамян', 'Арсений', 3),
('Асмарян', 'Санвел', 3),
('Вердиян', 'Ашот', 3),
('Мирзахметов', 'Муслимбек', 3),
('Митаева', 'Хадижат', 3),
('Мукарамов', 'Абдулбосит', 3),
('Попсуй', 'Станислав', 3),
('Пятигоров', 'Александр', 3),
('Рахманалиев', 'Мухаммедин', 3),
('Савугина', 'Кристина', 3),
('Хомляк', 'Станислав', 3),
('Чурсина', 'Валерия', 3),
('Шаламыгин', 'Владислав', 3),
('Эстамиров', 'Абукар', 3),
('Бирюков', 'Сергей', 4),
('Свидина', 'Мария', 4),
('Харченко', 'Алексей', 4);

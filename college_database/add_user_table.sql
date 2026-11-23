use college

create table users (
id int primary key auto_increment,
username varchar(100) not null unique,
password_hash varchar(255) not null,
role enum('TEACHER', 'STUDENT') not null,
student_id int UNIQUE,
teacher_id int UNIQUE,
foreign key (student_id)
	references students(id)
	on delete cascade
	on update cascade,
foreign key (teacher_id)
	references teachers(id)
	on delete cascade
	on update cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

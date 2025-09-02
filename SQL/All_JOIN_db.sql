CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE marks (
  mark_id SERIAL PRIMARY KEY,
  student_id INT,
  subject VARCHAR(50),
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (name)
VALUES ('Akarsh Vyas'), ('Simran Mehta'), ('Rohan Gupta');

INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'English', 85), (1, 'Math', 89), (1, 'Science', 92),
(2, 'English', 80), (2, 'Math', 75), (2, 'Science', 78),
(3, 'English', 72), (3, 'Math', 70), (3, 'Science', 74);



-- INNER JOINT.
select s.name,m.subject,m.marks 
from students s JOIN marks m 
on s.student_id = m.student_id;

where name = 'Monster leo';

-- LEFT JOINT.
select s.name,m.subject,m.marks 
from students s LEFT JOIN marks m 
on s.student_id = m.student_id;

-- RIGHT JOINT.
select s.name,m.subject,m.marks 
from students s RIGHT join marks m 
on s.student_id = m.student_id;

-- FULL JOINT.
select s.name,m.subject,m.marks 
from students s FULL JOIN marks m 
on s.student_id = m.student_id;

-- CROSS JOINT.
select s.name,m.subject,m.marks 
from students s CROSS JOIN marks m;



INSERT INTO students (name)
values ('Code sharp');

INSERT INTO students (name)
values ('Arish amd');

INSERT INTO marks (student_id, subject, marks)
VALUES (7,'English',99);

select * from students;
select * from marks;



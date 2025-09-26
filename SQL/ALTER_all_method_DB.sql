CREATE TABLE students(
student_id SERIAL primary key,
name VARCHAR(100),
age bigint
);

insert into students(name,age)
values('Arish',19),
		('Ansh',23),
		('Rand',17);


-- Add new columns.
ALTER TABLE students
ADD Column email VarCHAR(100) Default 'not provided';


-- Delete column.
ALTER TABLE students
Drop Column email;


-- Rename a column.
ALTER TABLE students
RENAME Column name to full_name;


-- Change Data Type of a column.
ALTER Table students
Alter column age type smallint;


-- Set a Default values.
ALTER TABLE students
ALTER COLUMN age SET DEFAULT 18;


-- Remove a Default Value.
ALTER TABLE students
ALTER COLUMN age Drop DEFAULT;


-- Add a Constraint.
ALTER TABLE students
Add Constraint age_check Check (age >= 0);


-- Drop a Constraint.
ALTER TABLE students
Drop Constraint students_pkey;


-- Rename Table name.
ALTER TABLE students
Rename to school_students;

select * from school_students;

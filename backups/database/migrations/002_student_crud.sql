-- Student SQL#1 : Select 1 Student

SELECT * from students;

--Student SQL#2 : Select students in asc order by id;
SELECT * from students
    ORDER BY student_id ASC;

--Student SQL#3 : select students in desc order by id;
SELECT * from students
    ORDER BY student_id DESC;

--Student SQL#4 : select students in asc order by last_name;
SELECT * from students
    ORDER BY student_last_name ASC;

--Student SQL#5 select students in desc order by last_name;
SELECT * from students
    ORDER BY student_last_name DESC;

--Student SQL#6 select students in asc order by first_name;
SELECT * from students
    ORDER by student_first_name ASC;

--Student SQL#7 select students in desc order by first_name;
SELECT * from students
    ORDER by student_first_name DESC;

--You can modify displayed columns by selecting
--Specific columns after SELECT command
--Student SQL#8 display all students first_name and last_name;
SELECT student_first_name,
        student_last_name
FROM students
ORDER by student_first_name ASC;

--Student SQL#9 LIMIT 1 - you can change the limit to any number
SELECT student_first_name,
        student_last_name
FROM students
ORDER by student_first_name ASC
LIMIT 1;

--Student SQL#10 - select a student based on id
SELECT student_first_name,
        student_last_name
FROM students
WHERE student_id = 1
LIMIT 1;

--Student SQL#10 - update a student name a student based on id
UPDATE students
SET student_first_name= 'MikkoLouise',
    student_last_name= 'Pelvera'
WHERE student_id = 1;
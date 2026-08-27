create table books (
    book_id int auto_increment primary key not null,
    book_title varchar(255) not null,
    book_author varchar(255) not null,
    book_category varchar(255) not null,
    book_name varchar(255) not null,
    book_created_at timestamp not null default current_timestamp
);

create table borrow(
    borrow_id int auto_increment primary key not null,
    student_id int not null,
    book_id int not null;
    borrow_date timestamp not null default current_timestamp,
    borrow_return_date timestamp not null default null,
    constraint fk_borrow_student foreign key (student_id) references students (student_id),
    constraint fk_borrow_book foreign key (book_id) references books (book_id)

);

SELECT br.borrow_id, s.student_id,
        CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course, 
        b.book_title, b.book_author, b.book_category, 
        br.borrow_date, br.borrow_return_date

FROM borrow br
        JOIN students s ON br.student_id = s.student_id
        JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;


--Alter the borrow_return_date column to allow NULL values and set the default value to NULL
ALTER TABLE borrow MODIFY borrow_return_date timestamp null default null;

UPDATE borrow SET borrow_return_date = NULL WHERE borrow_return_date = '2026-08-25 08:33:43';

--Return a book by updating the borrow_return_date to the current timestamp

UPDATE borrow SET borrow_return_date = current_timestamp
--Change value of borrow_id to the ID of the borrow record you want to update   
WHERE borrow_id = 1
AND borrow_return_date IS NULL; 

SELECT br.borrow_id, s.student_id,
        CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, 
        b.book_title, b.book_author, b.book_category, 
        br.borrow_date, br.borrow_return_date 

FROM borrow br
        JOIN students s ON br.student_id = s.student_id
        JOIN books b ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NULL
ORDER BY br.borrow_date DESC;
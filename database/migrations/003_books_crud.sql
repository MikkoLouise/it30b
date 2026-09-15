SELECT * from books;


SELECT * from books
    ORDER by book_title ASC;

SELECT * from books
    ORDER by book_author DESC;

SELECT * from books
    ORDER by book_category ASC;

SELECT book_id,
        book_title,
        book_category
FROM books
ORDER by book_id ASC;

SELECT book_id,
        book_title,
        book_category
FROM books
ORDER by book_id DESC
LIMIT 5;

SELECT book_title,
        book_category,
        book_id
FROM books
WHERE book_id = 1;


UPDATE books
SET book_title= 'My Hero Academia',
    book_category= 'Anime'
WHERE book_id = 1;


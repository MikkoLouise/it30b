1.Create Database <database_name>;
2.Show Databases;
3.Connect <database_name>;
4.Create Table <table_name_in_plural> (
5.Insert Into <table_name_in_plural>
             (Columns) Values    
             (Values);

);




#Utility Commands   
\! cls

mysqldump -u root -p  --databases library_db > G:\Xampp\htdocs\dev\it30b\backups\08182026_library_db.sql

mysqldump -u root -p  --databases library_db > G:\Xampp\htdocs\dev\it30b\backups\%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%_library_db.sql

commands are = describe , alter table , describe = to check if we have changes/add into the table

insert into students(student_first_name,student_last_name,student_course) values ("Mikko Louise" , "Pelvera" , "BSIT")

insert into students(student_first_name , student_last_name , student_course ) values ("Wahiv" , "Paquibot" , "BSIT" );

update students set student_created_at = current_timestamp where student_created_at is null;

insert into students(student_first_name , student_last_name , student_course , student_created_at) values ("Jinno" , "Pelvera" , "BSMT" , '2025-08-20 00:27:13');
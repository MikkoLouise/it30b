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

source D:\dev\it30b\backups\date_db_name.sql
mysqldump -u root -p --databases library_db > D:\dev\it30b\backups\"$(date + %Y%m%d_%H%M%S)_library_db.sql
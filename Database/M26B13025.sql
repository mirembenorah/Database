show DATABASES;
show tables;

use university;

show tables;
describe students;
SELECT*FROM students;

SELECT * FROM students ORDER BY marks DESC;
SELECT* FROM students ORDER BY programme, marks DESC;
SELECT * FROM students where gender ='male';
CREATE view male_students as SELECT* FROM students where gender  = 'male';
CREATE view Esther as SELECT * FROM students where programme NOT IN ('BSIT', 'DIT');
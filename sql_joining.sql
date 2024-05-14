CREATE DATABASE sql_joining;

CREATE TABLE student(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(40),
	mobile VARCHAR(11)
);

INSERT INTO student (NAME,mobile) 
VALUES('Asif','0101111'),
('Abrar','0101010'),
('Mosaddik','0101101'),
('Saif','0100111'),
('Akash','0100011');

CREATE TABLE stu_info(
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   stu_id INT NOT NULL,
   address VARCHAR(40),
   batch VARCHAR(11),
   FOREIGN KEY (stu_id) REFERENCES student(id)
);


INSERT INTO stu_info (stu_id,address,batch)
VALUES (1,'Kuril','56 A'),
(2,'Banashree','56 A'),
(3,'Dhanmondi','56 A'),
(4,'Uttara','56 A'),
(5,'Banani','56 A');


-- natural_join 

SELECT * FROM student NATURAL JOIN stu_info
WHERE student.id = stu_info.stu_id;

-- or

SELECT t1.NAME,t2.address,t2.batch FROM  
student AS t1,stu_info AS t2  
WHERE t1.id = t2.stu_id;


-- inner_join

SELECT t1.*,t2.address, t2.batch FROM  
student AS t1 INNER JOIN stu_info AS t2  
ON t1.id = t2.stu_id;


-- left_join

SELECT t1.*,t2.address, t2.batch FROM  
student AS t1 LEFT JOIN stu_info AS t2  
ON t1.id = t2.stu_id;


-- right_join

SELECT t1.*,t2.address, t2.batch FROM  
student AS t1 RIGHT JOIN stu_info AS t2  
ON t1.id = t2.stu_id;

-- or

SELECT t1.*,t2.address, t2.batch FROM  
stu_info AS t2 RIGHT JOIN student AS t1  
ON t1.id=t2.stu_id;



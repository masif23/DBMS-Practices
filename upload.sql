CREATE DATABASE github_upload;

CREATE TABLE stu_info(
id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
stu_name VARCHAR(100), 
batch VARCHAR(5),
section VARCHAR(5),
dept VARCHAR(50),
cgpa FLOAT );


INSERT INTO info
VALUES (101, 'Asif', '56', 'A', 'CSE', 3.87);

INSERT INTO info(stu_name, batch, section, dept, cgpa)
VALUES ('Mosaddik', '56', 'A', 'CSE', 3.90);

INSERT INTO info(stu_name, batch, section, dept, cgpa)
VALUES ('Akash', '56', 'A', 'CSE', 3.85);

INSERT INTO info(stu_name, batch, section, dept, cgpa)
VALUES ('Abrar', '56', 'A', 'CSE', 3.88);

INSERT INTO info(stu_name, batch, section, dept, cgpa)
VALUES ('Saif', '56', 'A', 'CSE', 3.86);

INSERT INTO info(stu_name, batch, section, dept, cgpa)
VALUES ('Saykat', '56', 'A', 'CSE', 3.78);



CREATE TABLE fac_info(
id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
fac_name VARCHAR(100),
dept VARCHAR(50),
address VARCHAR (100),
postal INT,
handles INT
);


INSERT INTO fac_info (id, fac_name, dept, address, postal, handles)
VALUES (2201, 'Karen Gyllen','CSE', 'Saginaw, Michigan, USA', 48607, 101);

INSERT INTO fac_info (fac_name, dept, address, postal, handles)
VALUES ('John Smith','CSE', 'Beaumont, Texas, USA', 77701, 102);

INSERT INTO fac_info (fac_name, dept, address, postal, handles)
VALUES ('Jonny Blaze','CSE', 'Mason, Ohio, USA', 45040, 103);

INSERT INTO fac_info (fac_name, dept, address, postal, handles)
VALUES ('Danny Fenton','CSE', 'Time Square, New York, USA', 10013, 104);

INSERT INTO fac_info (fac_name, dept, address, postal, handles)
VALUES ('Grace McLanister','CSE', 'Wood Dale, Illinois, USA', 60191, 105);

INSERT INTO fac_info (fac_name, dept, address, postal, handles)
VALUES ("Mike Ox'Mall",'CSE', 'Philadelphia, Pennsylvania, USA', 19104, 106);


ALTER TABLE fac_info
ADD FOREIGN KEY (handles) REFERENCES stu_info(id);





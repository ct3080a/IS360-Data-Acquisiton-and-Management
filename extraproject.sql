CREATE TABLE student(
 INT AUTO_INCREMENT PRIMARY KEY NOT NULL
sex CHAR NOT NULL,
race CHAR NOT NULL,
);

CREATE TABLE substances(
 INT AUTO_INCREMENT PRIMARY KEY NOT NULL
REFERENCES student ( )
cigarette bool NOT NULL
alcohol bool NOT NULL
marijuana bool NOT NULL
Freq integer
);


SELECT COUNT(*) FROM student;
SELECT AVG(Freq) FROM student;
SELECT SUM(Freq) FROM student;
SELECT FIRST(Freq) FROM student;
SELECT LAST(Freq) FROM student;

SELECT COUNT(*) FROM substances;
SELECT AVG(Freq) FROM substances;
SELECT SUM(Freq) FROM substances;
SELECT FIRST(Freq) FROM substances;
SELECT LAST(Freq) FROM substances;
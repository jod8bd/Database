INSERT INTO classes VALUES ("Database Appl & Info Sys","CS","CS 3380","16:00:00","16:50:00","MW");
INSERT INTO classes VALUES ("Electromagnetic Fields","ECE","ECE 3510","09:00:00","09:50:00","MWF");
INSERT INTO classes VALUES ("Circuit Theory 2","ECE","ECE 3810","15:00:00","15:50:00","MWF");
INSERT INTO classes VALUES ("RealTime Embedded Computing","ECE","ECE 4220","12:00:00","12:50:00","MW");
INSERT INTO classes VALUES ("Engineering Study Abroad","COE","EGNR 3000","18:30:00","20:30:00","M");
INSERT INTO classes VALUES ("Engineering Thermodynamics","COE","EGNR 2300","08:00:00","08:50:00","MWF");
INSERT INTO classes VALUES ("Software Design","ECE","ECE 3220","09:00:00","09:50:00","MW");
INSERT INTO classes VALUES ("VHDL & Preogrammable Logic Device","ECE","ECE 4250","14:00:00","14:50:00","MWF");
INSERT INTO classes VALUES ("Electronic Circuits & Signals 1","ECE","ECE 3410","10:00:00","10:50:00","MWF");
INSERT INTO classes VALUES ("Introduction to Math Stats","MATH","STAT 4710","09:00:00","10:00:00","MWF");

SELECT * FROM classes;

SELECT start FROM classes;

SELECT * FROM classes WHERE department="ECE";

SELECT name,course_id FROM classes WHERE days="MWF";

SELECT TIMEDIFF(start,end) FROM classes;

UPDATE classes SET days='T' WHERE course_id="ECE 4220";

UPDATE classes SET start="14:00:00" AND end="14:50:00" WHERE days="MWF";

UPDATE classes SET department="COE" WHERE department="ECE";

UPDATE classes SET name="Database 2" AND course_id="CS 4380" WHERE name="Database Appl & Info Sys";
DELETE FROM classes WHERE department="MATH";
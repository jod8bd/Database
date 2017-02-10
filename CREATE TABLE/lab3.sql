DROP TABLE IF EXISTS classes;

CREATE TABLE classes
(
    name VARCHAR(50) NOT NULL,
    department VARCHAR(4) NOT NULL,
    course_id VARCHAR(6) NOT NULL,
    start TIME,
    end TIME,
    days VARCHAR(2),
    PRIMARY KEY (course_id)
);

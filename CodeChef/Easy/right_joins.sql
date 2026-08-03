-- Right Joins
/* Write the queries to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - RIGHT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
/* 1) JOIN the tables 'student' and 'course' */
SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;

/* 2) RIGHT JOIN the tables 'student' and 'course' */
SELECT *
FROM student
RIGHT JOIN course
ON student.Course_id = course.Course_id;
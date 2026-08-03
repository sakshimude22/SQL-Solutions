-- Left Joins
/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
/* Task 1: JOIN tables */
SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;

/* Task 2: LEFT JOIN tables */
SELECT *
FROM student
LEFT JOIN course
ON student.Course_id = course.Course_id;
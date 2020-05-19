--Jamison Wilkes
--SQL Assignment 1

SELECT salutation, first_name, last_name
FROM instructor
ORDER BY last_name, first_name;

SELECT DISTINCT location
FROM section
ORDER BY location;

SELECT first_name, last_name
FROM instructor 
WHERE last_name LIKE '%s'
ORDER BY first_name, last_name;

SELECT phone, first_name||' '|| last_name "Full Name", employer
FROM student 
WHERE last_name ='Torres'
ORDER BY employer;

SELECT course_no, description
FROM course
WHERE prerequisite = 350
ORDER BY course_no;

SELECT course_no, description, cost
FROM course
WHERE course_no >= 200 AND course_no < 300 AND cost < 1100
ORDER BY course_no;

SELECT course_no, section_id, location
FROM section 
WHERE course_no >= 100 
AND course_no <= 199
AND location IN('L214','L509')
ORDER BY course_no, location;

SELECT course_no, section_id, capacity
FROM section
WHERE capacity IN(12,15)
ORDER BY course_no, section_id;

SELECT student_id, numeric_grade
FROM grade
WHERE  section_id LIKE '141'
AND grade_type_code LIKE 'MT'
ORDER BY student_id, numeric_grade;

SELECT course_no, description
FROM course 
WHERE course_no >= 300 AND course_no <400 
AND prerequisite IS NOT NULL
ORDER BY description;

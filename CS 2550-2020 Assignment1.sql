SELECT description, course_no FROM course;

SELECT custfirstname, custlastname, custcity, custstate FROM customer;

SELECT empfirstname, emplastname, empphone FROM employee;

SELECT cost FROM course;

SELECT letter_grade FROM grade_conversion;

SELECT DISTINCT letter_grade FROM grade_conversion;

SELECT last_name, zip FROM instructor;

SELECT DISTINCT zip FROM instructor;
    
SELECT first_name, last_name, phone FROM instructor WHERE last_name = 'Schorin';

SELECT description, cost FROM course WHERE cost >= 1195;

SELECT description, cost FROM course WHERE cost BETWEEN 1000 AND 1100;

SELECT description, cost FROM course WHERE cost IN(1095, 1595);

SELECT first_name, last_name, phone FROM instructor WHERE last_name LIKE 'S%';

SELECT first_name, last_name FROM instructor WHERE last_name LIKE '_o%'; --'__o%' || '%o%' 'o' in the second position or anywhre 

SELECT first_name, phone FROM instructor WHERE last_name NOT LIKE  'S%' AND first_name NOT LIKE 'Tom';

SELECT description, cost FROM course WHERE cost = 1095 AND description LIKE 'I%'; 

SELECT description, cost, prerequisite FROM course WHERE cost = 1195 AND prerequisite = 20 OR prerequisite = 25; 

SELECT course_no, description FROM course WHERE prerequisite IS NULL ORDER BY description;

SELECT course_no, description FROM course WHERE prerequisite IS NULL ORDER BY course_no DESC;

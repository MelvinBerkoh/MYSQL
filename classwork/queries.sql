-- to insert somthing in to colums
USE quantum_tutors;
INSERT INTO customers (
    first_name,
    last_name,
    contact_number,
    email,
    registration_date
  )
VALUES (
    'John',
    'Smith',
    '123-456-7890',
    'johnsmith@gmail.com',
    curdate()
  );
CREATE TABLE loyal_students(
  student_id INT PRIMARY KEY,
  first_name VARCHAR (225),
  last_name VARCHAR (225),
  contact_number VARCHAR(225),
  email VARCHAR (225)
);
INSERT INTO loyal_students(
    student_id,
    first_name,
    last_name,
    contact_number,
    email
  )
SELECT c.customer_id,
  c.first_name,
  c.last_name,
  c.contact_number,
  c.email
FROM customers C
WHERE c.customer_id IN (2, 5, 6, 7, 8, 9, 10);
SELECT e.customer_id,
  SUM(co.price)
FROM enrollments e
  JOIN courses co ON e.course_id = co.course_id
GROUP BY e.customer_id
HAVING SUM(co.price) > 250;
-- UPDATE would like to increase the price for course_id = 1 nby 10%
UPDATE courses
SET price = price * 1.10
WHERE course_id = 1;
-- UPDATE would like to decrease the price for course_id = 3 by 10% and update the description column 
UPDATE coursesz
SET price = price *.9,
  description = CONCAT(description, 'UPDATE!')
WHERE course_id = 3;
/* Top perofrming Instructor: QuantumTutors wants to recognize and reward top-performing Instructors.. AN instructor is considered 
 top-performing if all of their courses have recieved an average rating of 4 or more. Write a query to fetch the details of top-performing
 intructors*/
SELECT i.first_name,
  i.last_name
FROM instructors i
WHERE 4 <= ALL (
    SELECT avg(r.rating)
    FROM reviews
      JOIN courses c ON c.course_id = r.course_id
    WHERE c.instructor_id = i.instuctor_id
    GROUP BY r.course_id
  );
/* delete courses tat don't have any enrollments */
DELETE FROM courses
WHERE course_id NOT IN (
    SELECT DISTINCT course_id
    FROM enrollments
  );
/* remove all the reviews for courses that are not offered anymore*/
DELETE FROM reviews
WHERE course_id NOT IN (
    SELECT course_id
    FROM courses
  );
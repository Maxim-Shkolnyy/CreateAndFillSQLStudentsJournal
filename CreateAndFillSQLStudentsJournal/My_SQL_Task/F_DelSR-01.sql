--1 VARIANT

DELETE STUDENTS FROM 
STUDENTS INNER JOIN GROUPS ON 
GROUPS.GROUP_ID = STUDENTS.GROUP_ID 
WHERE GROUPS.NAME = 'SR-01'

--2 VARIANT

DELETE FROM STUDENTS WHERE STUDENT_ID IN
(SELECT STUDENT_ID FROM STUDENTS, GROUPS WHERE STUDENTS.GROUP_ID = GROUPS.GROUP_ID AND GROUPS.NAME = 'SR-01')

-- Зарплаты по должностям

SELECT pos_name,salary
FROM POSITIONS
WHERE CAST (salary AS NUMERIC)>=40000;


-- Средняя зарплата

SELECT AVG(CAST (salary AS NUMERIC))
FROM POSITIONS;


-- Число сотрудников в отделе

SELECT dep_name, COUNT(emp_id) as employee_qty
FROM DEPARTMENTS
INNER JOIN STAFF
ON id=dep_id
GROUP BY id;


-- Сотрудник первого отдела, упорядоченные по фамилии, имени

SELECT last_name,first_name
FROM EMPLOYEE
INNER JOIN STAFF
ON id=emp_id
WHERE dep_id=1
ORDER BY last_name,first_name;


-- Отделы имеющие более одного сотрудника

SELECT dep_name
FROM DEPARTMENTS
INNER JOIN STAFF
ON id=dep_id
GROUP BY id
HAVING  COUNT(emp_id)>1;








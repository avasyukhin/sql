SELECT pos_name,salary
FROM POSITIONS
WHERE CAST (salary AS NUMERIC)>=40000;
-- Зарплаты по должностям


SELECT AVG(CAST (salary AS NUMERIC))
FROM POSITIONS;

-- Средняя зарплата

SELECT dep_name, COUNT(emp_id) as employee_qty
FROM DEPARTMENTS
INNER JOIN STAFF
ON dep_id=id
GROUP BY id;

-- Число сотрудников в отделе

SELECT last_name,first_name
FROM EMPLOYEE
INNER JOIN STAFF
ON emp_id=id
WHERE dep_id=1
ORDER BY last_name,first_name;

-- Сотрудник первого отдела, упорядоченные по фамилии, имени

SELECT dep_name
FROM DEPARTMENTS
INNER JOIN STAFF
ON dep_id=id
GROUP BY id
HAVING  COUNT(emp_id)>1;

-- Отделы имеющие более одного сотрудника






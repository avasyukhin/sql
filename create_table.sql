BEGIN;
CREATE TABLE EMPLOYEE (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL 
);
CREATE TABLE DEPARTMENTS (
	id SERIAL PRIMARY KEY,
	dep_name VARCHAR(50) NOT NULL,
	open_from TIME  NOT NULL,
	phone_number CHAR(10) NOT NULL,
	ip_addr INET
);
CREATE TABLE POSITIONS (
	id SERIAL PRIMARY KEY,
	pos_name VARCHAR(50) NOT NULL,
	salary MONEY NOT NULL CHECK (CAST (salary AS NUMERIC)>0)
);
CREATE TABLE STAFF (
	emp_id INTEGER REFERENCES EMPLOYEE (id) NOT NULL,
	dep_id INTEGER REFERENCES DEPARTMENTS (id) NOT NULL,
	pos_id INTEGER REFERENCES POSITIONS (id) NOT NULL
);



INSERT INTO EMPLOYEE (first_name,last_name,birth_date)
VALUES ('John','Dow', DATE '1985-07-03'),
('Joahn','Dowson', DATE '1975-08-01'),
('Ron','Paul', DATE '1966-07-01'),
('Alex','Johnson', DATE '1990-11-11'),
('Simon','Alexander', DATE '1977-12-15');





INSERT INTO DEPARTMENTS (dep_name ,open_from ,phone_number ,ip_addr)
VALUES ('HR', TIME '08:00 ','+556667778',INET '192.168.100.128/25'),
('R&D', TIME '08:00','+345345678',INET '192.168.4.7/24'),
('ACCOUNTING', TIME '09:00','+553456788',NULL),
('MANAGMENT', TIME '09:00','+556444778',NULL),
('FINANCIAL', TIME '08:00','+552211778',NULL);



INSERT INTO POSITIONS (pos_name ,salary)
VALUES ('Chief', '50000'),
('Secretary', '30000'),
('Specialist', '40000'),
('Trainee', '20000'),
('Support','30000');



INSERT INTO STAFF (emp_id ,dep_id, pos_id )
VALUES ('1', '1','1'),
('2', '1','3'),
('3', '3','1'),
('4', '4','1'),
('5','1','4');
COMMIT;
CREATE TABLE Employee(
  Fname VARCHAR(15) NOT NULL,
  Minit CHAR,
  Lname VARCHAR(15) NOT NULL,
  Ssn CHAR(9) NOT NULL,
  Bdate DATE,
  Address VARCHAR(30),
  Sex CHAR,
  Salary DECIMAL(10, 2),
  Super_ssn CHAR(9),
  Dno INT NOT NULL,
  PRIMARY KEY (Ssn)
);
INSERT INTO Employee
Values(
    'John',
    'B',
    'Smith',
    '123456789',
    '1965-01-09',
    '731 Fondren, Houston, TX',
    'M',
    '30000',
    '333445555',
    '5'
  ),
  (
    'Franklin',
    'T',
    'Wong',
    '333445555',
    '1955-12-08',
    '638 Voss, Houston, TX',
    'M',
    '40000',
    '888665555',
    '5'
  ),
  (
    'Alcia',
    'J',
    'Zelaya',
    '999887777',
    '1968-01-19',
    '3321 Castle, Spring, TX',
    'F',
    '25000',
    '987654321',
    '4'
  ),
  (
    'Jennifer',
    'S',
    'Wallance',
    '987654321',
    '1941-06-20',
    '291 Berry,Bellaire,TX',
    'F',
    '43000',
    '888665555',
    '4'
  ),
  (
    'Ramesh',
    'S',
    'Narayan',
    '666884444',
    '1962-09-15',
    '975 Fire Oak, Humble, TX',
    'M',
    '38000',
    '333445555',
    '5'
  ),
  (
    'Joyce',
    'A',
    'English',
    '453453453',
    '1972-07-31',
    '5631 Rice, Houston, TX',
    'F',
    '25000',
    '333445555',
    '5'
  ),
  (
    'Ahmad',
    'V',
    'Jabbar',
    '987987987',
    '1969-03-29',
    '980 Dallas, Houston, TX',
    'M',
    '25000',
    '987654321',
    '1'
  ),
  (
    'James',
    'E',
    'Borg',
    '888665555',
    '1937-11-10',
    '450 Stone, Houston, TX',
    'M',
    '55000',
    'NULL',
    '1'
  );
CREATE TABLE DEPARTMENT (
  Dname VARCHAR(15) NOT NULL,
  Dnumber INT NOT NULL,
  Mgr_ssn CHAR(9) NOT NULL,
  Mgr_start_date DATE,
  PRIMARY KEY (Dnumber),
  UNIQUE(Dname),
  FOREIGN KEY (Mgr_ssn) REFERENCES Employee(Ssn)
);
insert into DEPARTMENT
Values('Research', '5', '333445555', '1988-05-22'),
  ('Administration', '4', '987654321', '1995-01-01'),
  ('Headquarters', '1', '888665555', '1981-06-19');
CREATE TABLE DEPT_LOCATIONS (
  Dnumber INT NOT NULL,
  Dlocation varchar(15) NOT NULL,
  PRIMARY KEY (Dnumber, Dlocation),
  FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT (Dnumber)
);
insert into DEPT_LOCATIONS
Values('1', 'Houston'),
  ('4', 'Stafford'),
  ('5', 'Bellaire'),
  ('5', 'Sugarland'),
  ('5', 'Houston');
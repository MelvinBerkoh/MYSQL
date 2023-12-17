/* going to added table 2 and 1 into on database example for a company structure professor provided the documentation for how that database should look like*/
create table WORKS_ON(
  Essn CHAR(9) NOT NULL,
  Pno INT NOT NULL,
  Hours DECIMAL(3, 1) NOT NULL,
  PRIMARY KEY (Essn, Pno),
  FOREIGN KEY (Essn) REFERENCES Employee(Ssn),
  FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)
);
insert into WORKS_ON
Values('123456789', 1, '32.5'),
  ('123456789', 2, '7.5'),
  ('666884444', 3, '40.0'),
  ('453453453', 1, '20.0'),
  ('453453453', 2, '20.0'),
  ('333445555', 2, '10.0'),
  ('333445555', 3, '10.0'),
  ('333445555', 10, '10.0'),
  ('333445555', 20, '10.0'),
  ('999887777', 30, '30.0'),
  ('999887777', 10, '10.0'),
  ('987987987', 10, '35.0'),
  ('987987987', 30, '5.0'),
  ('987654321', 30, '20.0'),
  ('987654321', 20, '15.0'),
  ('888665555', 20, 'NULL');
create table PROJECT(
  Pname VARCHAR(15) NOT NULL,
  Pnumber INT NOT NULL,
  Plocation VARCHAR(15),
  Dnum INT NOT NULL,
  PRIMARY KEY (Pnumber),
  UNIQUE(Pname),
  FOREIGN KEY(Dnum) REFERENCES DEPARTMENT(Dnumber)
);
insert into PROJECT
Values('ProductX', 1, 'Bellaire', 5),
  ('ProductY', 2, 'Sugarland', 5),
  ('ProductZ', 3, 'Houston', 5),
  ('Computerization', 10, 'Stafford', 4),
  ('Reorganization', 10, 'Stafford', 4),
  ('Newbenefits', 30, 'Stafford', 4);
create table DEPENDENT(
  Essn CHAR(9) NOT NULL,
  Dependent_name VARCHAR(15),
  Sex Char(1),
  Bdate DATE,
  Relationship VARCHAR(8),
  primary key(Essn, Dependent_name),
  FOREIGN KEY (Essn) REFERENCES Employee(Ssn)
);
insert into DEPENDENT
Values(
    '333445555',
    'Alice',
    'F',
    '1986-04-05',
    'Daughter'
  ),
  (
    '333445555',
    'Theodore',
    'M',
    '1983-10-25',
    'Son'
  ),
  ('333445555', 'JOY', 'F', '1958-05-03', 'Spouse'),
  (
    '987654321',
    'Abner',
    'M',
    '1942-02-28',
    'Spouse'
  ),
  ('123456789', 'Micheal', 'M', '1988-01-04', 'Son'),
  (
    '123456789',
    'Alice',
    'F',
    '1988-12-30',
    'Daughter'
  ),
  (
    '123456789',
    'Elizabeth',
    'F',
    '1967-05-05',
    'Spouse'
  );
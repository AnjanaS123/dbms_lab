
CREATE TABLE DEPARTMENT(
DEPTID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(20));

CREATE TABLE STUDENT(
STUDID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(20),
CLASS VARCHAR(10),
CITY VARCHAR(25),
TOTAL_MARKS INT,
PERCENTAGE VARCHAR(5),
DEPTID INT NOT NULL,
FOREIGN KEY(DEPTID) REFERENCES DEPARTMENT(DEPTID)
);

CREATE TABLE STAFF(
STAFFID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(20),
DEPTID INT NOT NULL,
FOREIGN KEY(DEPTID) REFERENCES DEPARTMENT(DEPTID),
DESIGNATION VARCHAR(25),
SALARY INT,
CITY VARCHAR(15));

CREATE TABLE COMPANY(
COMPID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(20) NOT NULL,
CITY VARCHAR(20),
NO_OF_EMPLOYEES INT NOT NULL);

CREATE TABLE EMPLOYEE(
EMPID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(20),
COMPID INT NOT NULL,
FOREIGN KEY(COMPID) REFERENCES COMPANY(COMPID),
DESIGNATION VARCHAR(25),
SALARY INT,
CITY VARCHAR(25));

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



SQL> insert into students values(1,'aparna','mca','karipoor',1200,'90%',12);

1 row created.



SQL> insert into students values(2,'minnu','mba','tvm',1201,'90%',13);

1 row created.

SQL> insert into students values(3,'meenu','msc','thrissur',928,'70%',14);

1 row created.

SQL> select * from students;

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         1 aparna     mca        karipoor                   1200 90%            
        12                                                                      
                                                                                
         2 minnu      mba        tvm                        1201 90%            
        13                                                                      
                                                                                
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                

SQL> insert into staff values(3,'meena',10,'peon',9280,'tvm');

1 row created.

SQL> insert into staff values(4,'ashok',11,'teacher',50080,'tvm');

1 row created.

SQL> insert into staff values(5,'anjana',12,'teacher',50080,'tvm');

1 row created.

SQL> select * from staff;

  STAFF_ID NAME                     DEP_ID DESTINATION              SALARY      
---------- -------------------- ---------- -------------------- ----------      
CITY                                                                            
--------------------                                                            
         3 meena                        10 peon                       9280      
tvm                                                                             
                                                                                
         4 ashok                        11 teacher                   50080      
tvm                                                                             
                                                                                
         5 anjana                       12 teacher                   50080      
tvm                                                                             
                                                                                

SQL> insert into department values(12,'anjana');

1 row created.

SQL> insert into department values(11,'ashok');

1 row created.

SQL> insert into department values(10,'santhosh');

1 row created.

SQL> select * from department;

    DEP_ID NAME                                                                 
---------- --------------------                                                 
        12 anjana                                                               
        11 ashok                                                                
        10 santhosh                                                             



SQL> insert into company values(23,'santhosh','tvm',5);

1 row created.

SQL> insert into company values(24,'sukhanya','tvm',6);

1 row created.

SQL> insert into company values(25,'sukhi','kollam',9);

1 row created.

SQL> select * from company;

    COM_ID NAME                 CITY                 NO_OF_EMPOLYEES            
---------- -------------------- -------------------- ---------------            
        23 santhosh             tvm                                5            
        24 sukhanya             tvm                                6            
        25 sukhi                kollam                             9            


SQL> insert into employee values(1,'sony',23,'peon',12000,'tvm');

1 row created.

SQL> insert into employee values(2,'soniya',24,'manager',42000,'tvm');

1 row created.

SQL> insert into employee values(3,'suski',25,'manager',42000,'kollam');

1 row created.

SQL> select * from employee;

     EMPID NAME                     COMPID DESIGNATION              SALARY      
---------- -------------------- ---------- -------------------- ----------      
CITY                                                                            
------------------------------                                                  
         1 sony                         23 peon                      12000      
tvm                                                                             
                                                                                
         2 soniya                       24 manager                   42000      
tvm                                                                             
                                                                                
         3 suski                        25 manager                   42000      
kollam                                                                          
                                                                                




SQL> 
SQL>  select * from students;

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         1 aparna     mca        karipoor                   1200 90%            
        12                                                                      
                                                                                
         2 minnu      mba        tvm                        1201 90%            
        13                                                                      
                                                                                
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                



SQL> 
SQL>  select * from students  ORDER BY dep_id;

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         1 aparna     mca        karipoor                   1200 90%            
        12                                                                      
                                                                                
         2 minnu      mba        tvm                        1201 90%            
        13                                                                      
                                                                                
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                

SQL> SELECT NAME FROM EMPLOYEE;

NAME                                                                            
--------------------                                                            
sony                                                                            
soniya                                                                          
suski                                                                           

SQL> SELECT * FROM STAFF WHERE SALARY > 20000;

  STAFF_ID NAME                     DEP_ID DESTINATION              SALARY      
---------- -------------------- ---------- -------------------- ----------      
CITY                                                                            
--------------------                                                            
         4 ashok                        11 teacher                   50080      
tvm                                                                             
                                                                                
         5 anjana                       12 teacher                   50080      
tvm                                                                             
                                                                                





SQL>  select * from students  where percentage ='70%';

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                

SQL> 
SQL>  select * from students where percentage between '70%' and '90%';

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         1 aparna     mca        karipoor                   1200 90%            
        12                                                                      
                                                                                
         2 minnu      mba        tvm                        1201 90%            
        13                                                                      
                                                                                
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                

SQL> 
SQL> select * from students where percentage between '70%' and '80%';

     STDID NAME       CLASS      CITY                 TOTAL_MARK PERCE          
---------- ---------- ---------- -------------------- ---------- -----          
    DEP_ID                                                                      
----------                                                                      
         3 meenu      msc        thrissur                    928 70%            
        14                                                                      
                                                                                


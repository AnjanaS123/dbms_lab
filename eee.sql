SQL> select * from department;

no rows selected

SQL> insert into students values(1,'aparna','mca','karipoor',1200);
insert into students values(1,'aparna','mca','karipoor',1200)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> insert into students values(1,'aparna','mca','karipoor',1200,'90%',12);

1 row created.

SQL> insert into students values(1,'minnu','mba','tvm',1201,'90%',13);
insert into students values(1,'minnu','mba','tvm',1201,'90%',13)
*
ERROR at line 1:
ORA-00001: unique constraint (DB39.SYS_C006536) violated 


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

SQL> insert into company values(23,'santhosh','tvm'5);
insert into company values(23,'santhosh','tvm'5)
                                              *
ERROR at line 1:
ORA-00917: missing comma 


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

SQL> select * from employee;
select * from employee
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> 
SQL> CREATE TABLE EMPLOYEE(
  2  EMPID INT PRIMARY KEY NOT NULL,
  3  NAME VARCHAR(20),
  4  COMPID INT NOT NULL,
  5  FOREIGN KEY(COMPID) REFERENCES COMPANY(COMPID),
  6  DESIGNATION VARCHAR(25),
  7  SALARY INT,
  8  CITY VARCHAR(25));
FOREIGN KEY(COMPID) REFERENCES COMPANY(COMPID),
                                       *
ERROR at line 5:
ORA-00904: "COMPID": invalid identifier 


SQL> CREATE TABLE EMPLOYEE(
  2  EMPID INT PRIMARY KEY NOT NULL,
  3  NAME VARCHAR(20),
  4  COMPID INT NOT NULL,
  5  FOREIGN KEY(COMPID) REFERENCES COMPANY(COMP_ID),
  6  DESIGNATION VARCHAR(25),
  7  SALARY INT,
  8  CITY VARCHAR(25));
FOREIGN KEY(COMPID) REFERENCES COMPANY(COMP_ID),
                                       *
ERROR at line 5:
ORA-00904: "COMP_ID": invalid identifier 


SQL> commit;

Commit complete.

SQL> spool off;

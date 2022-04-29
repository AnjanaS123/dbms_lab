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


SQL> create table employee(empid number(3),name char(20),compid number(3) references company(compid),designation char(20),salary number(6),city char(30));
create table employee(empid number(3),name char(20),compid number(3) references company(compid),designation char(20),salary number(6),city char(30))
                                                                                        *
ERROR at line 1:
ORA-00904: "COMPID": invalid identifier 


SQL> create table employee(empid number(3),name char(20),compid number(3) references company(com_id),designation char(20),salary number(6),city char(30));

Table created.

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
                                                                                

SQL> SELECT * FROM STUDENT ORDER BY DEPTID;
SELECT * FROM STUDENT ORDER BY DEPTID
                               *
ERROR at line 1:
ORA-00904: "DEPTID": invalid identifier 


SQL> select * from student;

   ROLL_NU S_NAME               S_ADDRESS                          PH_NUM       
---------- -------------------- ------------------------------ ----------       
         1 rahul                pattom                                          
         2 sachin               ambalam mukku                                   
         3 saurav               nalanchira                                      

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
SQL> 
SQL>  select * from students  ORDER BY DEPid;
 select * from students  ORDER BY DEPid
                                  *
ERROR at line 1:
ORA-00904: "DEPID": invalid identifier 


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
                                                                                

SQL>  SELECT * FROM students  WHERE PERCENTAGE BETWEEN 80 AND 90;
 SELECT * FROM students  WHERE PERCENTAGE BETWEEN 80 AND 90
                               *
ERROR at line 1:
ORA-01722: invalid number 


SQL> desc students;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STDID                                     NOT NULL NUMBER(3)
 NAME                                               VARCHAR2(10)
 CLASS                                              VARCHAR2(10)
 CITY                                               VARCHAR2(20)
 TOTAL_MARK                                         NUMBER(5)
 PERCENTAGE                                         VARCHAR2(5)
 DEP_ID                                             NUMBER(3)

SQL> select * from student where percentage >70% and percentage <90%;
select * from student where percentage >70% and percentage <90%
                                          *
ERROR at line 1:
ORA-00911: invalid character 


SQL>  select * from student where percentage ="70%";
 select * from student where percentage ="70%"
                                         *
ERROR at line 1:
ORA-00904: "70%": invalid identifier 


SQL> 
SQL>   select * from student where percentage ='70%';
  select * from student where percentage ='70%'
                              *
ERROR at line 1:
ORA-00904: "PERCENTAGE": invalid identifier 


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
                                                                                

SQL> spool off;

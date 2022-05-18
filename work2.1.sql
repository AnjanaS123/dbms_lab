

SQL> select name,class from students where class='mca';

NAME       CLASS
---------- ----------
aparna     mca


S

SQL> 
SQL>  update staff set salary=salary+salary/10 where destination='teacher';

2 rows updated.

SQL> select * from staff;

  STAFF_ID NAME                     DEP_ID DESTINATION              SALARY
---------- -------------------- ---------- -------------------- ----------
CITY
--------------------
         3 meena                        10 peon                       9280
tvm

         4 ashok                        11 teacher                   55088
tvm

         5 anjana                       12 teacher                   55088
tvm






SQL> select count(staff_id),dep_id from staff group by dep_id;

COUNT(STAFF_ID)     DEP_ID
--------------- ----------
              1         11
              1         10
              1         12

SQL> select employee.name from employee,company where employee.city=company.city;

no rows selected


SQL> 
SQL>  update employee set name='sukhi' where empid=3;

1 row updated.


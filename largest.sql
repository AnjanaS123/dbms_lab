
 set serveroutput on
 CREATE OR REPLACE PROCEDURE LARGEST(a number,b number,c number)IS
 BEGIN
 if(a>b)
then if(a>c)
 then
 dbms_output.put_line(a||' '||'is big');
end if;
 else
 if(b>c)
 then
 dbms_output.put_line(b||' '||'is big');
 else
 dbms_output.put_line(c||' '||'is big');
 end if;
end if;
 END;
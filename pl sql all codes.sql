?-------------ANONIM BLOCK 
---daxil edil?n ?d?din t?k v? ya cüt oldu?un ekrana ç?xarmaq.
declare
num number:=&enternumber;
begin
if mod(num,2)=0 then
DBMS_OUTPUT.PUT_LINE(num||' cut ededdir ');
else  
DBMS_OUTPUT.PUT_LINE(num||' tek ededdir ');
end if;
end;
------FUNCTION  
---employees c?dv?lind? s?tirl?rin say?n? ekrana ç?xarmaq
create or replace function get_count
return number
is
v_count number;
begin
select count(*) into v_count from employees ;
return v_count;
end;
begin
DBMS_OUTPUT.PUT_LINE(get_count);
END;



-----------PROCEDURE

---departament 100 olan i?çil?rin maa??n?n art?r?lmas? üçün prosedur
create or replace procedure pr_second (dep_id_in number,sal_raise_in number) 
is 
begin
update employees set salary=salary+sal_raise_in where department_id=dep_id_in;
commit;
end;

select * from employees where department_id=100;
execute pr_second(100,200);


-------------loop 
----if l? ??rt verilm?si 
---a>=20 ??rt öd?ndikd? ç?x??a verm?si n?z?r? al?naraq  t?k ?d?dl?rin 4 r?q?min? vurulmas? 
declare
a number:=1;
b number:=4;
begin
loop
a:=a+2;
b:=4*a;
DBMS_OUTPUT.PUT_LINE('4'||'x'||a||'='||b);
if a>=20 then exit;
end if;
end loop;
end;

-------while condition

----8 vurma ?m?li
declare
a number:=1;
b number;
begin
while a<=10
loop
b:=8*a;
DBMS_OUTPUT.PUT_LINE('8'||'x'||a||'='||b);
a:=a+1;
end loop;
end;

-------------cursor
create or replace function get_salary(employee_id_in in number)
return number is
cnumber number;
cursor c1 is select salary from employees where employee_id=employee_id_in;
begin
open c1;
fetch c1 into cnumber;
if
c1%notfound then
cnumber:=999;
end if;
close c1;
return cnumber;
end;
begin
DBMS_OUTPUT.PUT_LINE(get_salary(900));
END;
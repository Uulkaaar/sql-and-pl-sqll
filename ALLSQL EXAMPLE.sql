create table test1 ( id number constraint idd primary key,
name varchar2(20) constraint namee not null,
age number constraint age check (age>=18));

select * from test1;

 insert into test1 (id,name,age) values (1,'Fidan',25);
 insert into test1 (id,name,age) values (2,'Akif',25);
 insert into test1 (id,name,age) values (3,'Ulker',26);
 
 update test1 set age=27 where id=2;
 
  delete from test1 where id=2;
  
  select * from employees where department_id in(30,50);
  select * from employees where email like 'D%';
  select * from employees where hire_date between '17-JUN-03' AND '21-MAY-04';
  SELECT * FROM EMPLOYEES WHERE EMAIL LIKE '%L' AND DEPARTMENT_ID=80;
  SELECT * FROM EMPLOYEES WHERE SALARY>=1100;
  
  select case when department_id=60 then 'altmis' 
  when department_id=30 then '30' end as casewhen ,department_id from employees;
  
  select upper(first_name),email from employees;
  SELECT MAX(SALARY),DEPARTMENT_ID FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
  
SELECT EMPLOYEE_ID, SALARY,DEPARTMENT_ID,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS DENSE_RANK,
RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS RANK,
ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS ROWNUMBER FROM EMPLOYEES;

SELECT EMPLOYEE_ID,DEPARTMENT_ID,SALARY,
FIRST_VALUE(SALARY)OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY )FIRST_VALUE 
FROM EMPLOYEES
ORDER BY DEPARTMENT_ID;

SELECT employee_id,DEPARTMENT_ID,HIRE_DATE,
LAG(HIRE_DATE)OVER(  ORDER BY HIRE_DATE) LAGG ,
HIRE_DATE-LAG(HIRE_DATE)OVER(  ORDER BY HIRE_DATE) MINUSS
FROM EMPLOYEES
ORDER BY HIRE_DATE;


SELECT  LISTAGG(FIRST_NAME,'/') WITHIN GROUP( ORDER BY DEPARTMENT_ID ) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
  
  
  
  
  
select * from employees;
select * from departments;

---1--Manager id si null olan i?�inin ad,soyad v? n�mr?sin ekrana �?xar
select first_name,last_name,phone_number from employees where manager_id is null;

---2--C?dv?ld? manager id=102 olan mu?t?rinin job_id si AD_SU d?yi?m?k
select * from employees  WHERE MANAGER_ID='102'   ;
update employees set job_id='AD_SU' WHERE MANAGER_ID='102';

--3 	?n �ox maa? alan 10 i?�inin ad?n? v? soyad?n? qaytaracaq query yaz?n.
select salary,first_name,last_name from employees where rownum <=10 order by salary desc;
--4  -3-ci ?n y�ks?k maa? alan i?�inin ad?n? qaytaracaq query yaz?n. 
select first_name,salary from employees order by salary desc;

SELECT *
  FROM (SELECT first_name,
               salary,
               DENSE_RANK () OVER (ORDER BY salary DESC) AS rownumm
          FROM employees)
 WHERE rownumm = 3;
 
 --5  Ad?n?n uzunlugu 5-d?n boyuk v?  soyad?n?n uzunlugu 6-dan boyuk olan v? -- maas? 1500-d?n boyuk olan iscil?rin ad?n?, soyad?n? v? maa??n? qaytaracaq query yaz?n.

SELECT first_name, last_name, salary
  FROM (SELECT first_name, last_name, salary
          FROM employees
         WHERE salary > 1500)
 WHERE LENGTH (first_name) > 5 and LENGTH (last_name) > 6;
 
   --6 Manager_id-si null olmayan, Department_id 100 v? ya 101 olan, job_id-si ad_pres olmayan iscil?rin ad?n? v? soyad?n? �?xar?n. s?ralama maa?a g�r? olmal?d?r.

  SELECT first_name,
         last_name,
         salary,
         department_id
    FROM (SELECT first_name,
                 last_name,
                 salary,
                 department_id
            FROM employees
           WHERE manager_id IS NOT NULL AND JOB_ID != 'AD_PRES')
   WHERE department_id = 100 OR department_id = 101
ORDER BY salary;

   ---7 Commision_pct v? ya manager_id-si null olan, maas? 2000-3000 aras?nda olan iscil?rin ad?n?, soyad?n? v? maa??n? �?xar?n.

SELECT first_name, last_name, salary
  FROM (SELECT first_name,
               last_name,
               salary,
               commission_pct,
               manager_id
          FROM employees
         WHERE salary BETWEEN 2000 AND 3000)
 WHERE commission_pct IS NULL OR manager_id IS NULL;
 
 
 --8  departaments v? employees c?dv?ll?rini ?laq?l?ndirib, h?r m�?t?rinin ad?n? v?  departament ad?n? �?xar?n

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;
  
---9 departament adi Fin le baslamayan iscil?rin ad?n? �?xar?n

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
 WHERE D.DEPARTMENT_ID NOT LIKE 'Fin%';

 --10 Ad v? soyad sutunlar?n? concat funksiyas?z birl??dirib tam ad olaraq gost?rin, lakin ad v? soyad aras?nda bosluq olsun


SELECT first_name || ' ' || last_name AS tam_ad FROM employees;

 --11 Manager_id-si 100 v? ya 200 olan i?�il?rin ?m?k haqq?na gor? azdan coxa dogru s?ralanm?s??kild? gost?rin.

  SELECT first_name, salary, manager_id FROM employees  WHERE manager_id in ('100','200') ORDER BY salary;

---12 departamentl?rin? g�r? must?ril?rin adini v? soyad?n eyni s?tir? y???n

SELECT DEPARTMENT_ID,LISTAGG(first_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS name,
LISTAGG(last_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS surname  from employees group by DEPARTMENT_ID ;

--13  ?m?k haqq? 8000-d?n  az olan i?�il?rin m?lumatlar?n? ?m?k haqq?na g�r? �oxdan aza do?ru siralay?n

  SELECT * FROM employees WHERE salary < 8000 ORDER BY salary DESC;

 --14 Ad? �N� il? baslayan i?�il?rin ad?n? g�st?rin. h?m like h?m d? substr il?

SELECT * FROM employees WHERE first_name LIKE 'N%';

SELECT * FROM employees WHERE SUBSTR (first_name, 1, 1) = 'N';

 --15  h?r job id �zr? minimum ?m?k haqq?n? �?xar?n.

  SELECT MIN (salary), job_id FROM employees GROUP BY job_id;
 --16  h?r job id �zr? �mumi ?m?k haqq?n? hesablay?n v? ortalama ?m?k haqq? 6000-d?n cox olan job id-sini gost?rin.

  SELECT AVG (salary), SUM (salary), job_id  FROM employees GROUP BY job_id HAVING AVG (salary) > 6000;
  
  ---17.	100 n�mr?li departamentd? �al??an h?r i?�id?n daha �ox ?m?k haqq? alan i?�il?rin ad?n? g�st?rin.?


select * from employees where salary > (select max(salary) from employees where department_id = 100);

---18 telefon  n�mr?si  5 l? ba?layan i?�il?rin siyah?s?n �?xar
select * from employees where phone_number like '5%'
---19 adlar?n h?r birin b�y�k h?rfl? soyadlar? is? ki�ik h?rfl?rl? ekrana �?xar.
select upper(first_name),lower(last_name) from employees;
---20 departamenti 90 olan i?�il?rin say?n tap?n

select count(*) from employees where department_id=90;
-- 21.	40 n�mr?li departamantd? �al??an i?�il?rin ortalama maa??ndan daha �ox ortalama maa?? olan olan departamentl?ri g�st?rin.?

select avg(salary),department_id from employees group by department_id 
having avg(salary) > (select avg(salary) from hr.employees where department_id = 40);
---22 maa?? 6000 d?n a?a?? olan a?a?? maa?l?,6000den-10000 aras? orta maa?l?, 10000d?n �ox olan y�ks?k maa?l? qeydi olan s�tun yarad?n. 
select first_name,last_name,salary,
case when salary <6000 then 'a?a?? maa?l?' 
when salary >=6000 and salary <10000 then 'orta maa?l?' 
when  salary >=10000 then 'yuksek maa?l?'end maas from employees;


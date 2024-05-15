select * from employees;
select * from departments;

---1--Manager id si null olan işçinin ad,soyad və nömrəsin ekrana çıxar
select first_name,last_name,phone_number from employees where manager_id is null;

---2--Cədvəldə manager id=102 olan mştərinin job_id si AD_SU dəyiş
select * from employees  WHERE MANAGER_ID='102'   ;
update employees set job_id='AD_SU' WHERE MANAGER_ID='102';

--3 	ən çox maaş alan 10 i?çinin adını və  soyadını qaytaracaq query yaz?n.
select salary,first_name,last_name from employees where rownum <=10 order by salary desc;
--4  -3-ci ən yüksək maaş alan işçinin adını qaytaracaq query yazın. 
select first_name,salary from employees order by salary desc;

SELECT *
  FROM (SELECT first_name,
               salary,
               DENSE_RANK () OVER (ORDER BY salary DESC) AS rownumm
          FROM employees)
 WHERE rownumm = 3;
 
 --5  Adının uzunlugu 5-dən boyuk və  soyadının uzunlugu 6-dan boyuk olan və -- maaşı 1500-dən boyuk olan iscilərin adını, soyadını və maaşını qaytaracaq query yazn.

SELECT first_name, last_name, salary
  FROM (SELECT first_name, last_name, salary
          FROM employees
         WHERE salary > 1500)
 WHERE LENGTH (first_name) > 5 and LENGTH (last_name) > 6;
 
   --6 Manager_id-si null olmayan, Department_id 100 v? ya 101 olan, job_id-si ad_pres olmayan işçilərin adını soyadıdı və maaşını maaşa görə sıralama ilə çıxsrın.

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

   ---7 Commision_pct və ya manager_id-si null olan, maası 2000-3000 aras?nda olan isciləri çıxarın.

SELECT first_name, last_name, salary
  FROM (SELECT first_name,
               last_name,
               salary,
               commission_pct,
               manager_id
          FROM employees
         WHERE salary BETWEEN 2000 AND 3000)
 WHERE commission_pct IS NULL OR manager_id IS NULL;
 
 
 --8  departaments v? employees cədvəllərini əlaqələndirib, müştərinin ad və department adını çıxarın

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;
  
---9 departament adi Fin le baslamayan işçilərin adını çıxarın

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
 WHERE D.DEPARTMENT_ID NOT LIKE 'Fin%';

 --10 Ad və soyad sutunlarını concat funksiyasiz birləşdirib tam ad olaraq gostərin, lakin ad və soyad arasında bosluq olsun


SELECT first_name || ' ' || last_name AS tam_ad FROM employees;

 --11 Manager_id-si 100 v? ya 200 olan işçilərin əmək haqqına görə azdan çoxadoğru sıralanmış olsun.

  SELECT first_name, salary, manager_id FROM employees  WHERE manager_id in ('100','200') ORDER BY salary;

---12 departamentlərinə görə mustərilərin adini və soyadin eyni sətirə yiğin

SELECT DEPARTMENT_ID,LISTAGG(first_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS name,
LISTAGG(last_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS surname  from employees group by DEPARTMENT_ID ;

--13  əmək haqqi 8000-dən  az olan işçilərin məlumatarını əmək haqqına görə çoxdan aza do?ru siralay?n

  SELECT * FROM employees WHERE salary < 8000 ORDER BY salary DESC;

 --14 Ad? “N” ilə baslayan işçilərin siyahisin ekrana cixar

SELECT * FROM employees WHERE first_name LIKE 'N%';

SELECT * FROM employees WHERE SUBSTR (first_name, 1, 1) = 'N';

 --15  her job id uzre minimum emek haqqini ekrana cixar

  SELECT MIN (salary), job_id FROM employees GROUP BY job_id;
 --16  hər job id üzrə ümumi əmək haqqını hesablayin və ortalama əmək haqqi 6000dən cox olan job id-sini gost?rin.

  SELECT AVG (salary), SUM (salary), job_id  FROM employees GROUP BY job_id HAVING AVG (salary) > 6000;
  
  ---17.	100 nömrəli departamentdə çalışan hər işçidən daha çox əmək  haqqı alan işçilərin siyahisin çixarin


select * from employees where salary > (select max(salary) from employees where department_id = 100);

---18 telefon  nömrəsi 5le baslayan iscilerin siyahisin cixarin
select * from employees where phone_number like '5%'
---19 aadlarin hər birini boyuk soyadlari ise kicik herfle ekrana cixarin
select upper(first_name),lower(last_name) from employees;
---20 departamenti 90 olan işçilərin sayini tapn

select count(*) from employees where department_id=90;
-- 21.	40 nömrəli departamantdə çalşan işçilərin ortalama maaşnndan daha çox ortalama maaşı olan olan departamentləri göstərin.?

select avg(salary),department_id from employees group by department_id 
having avg(salary) > (select avg(salary) from hr.employees where department_id = 40);
---22 maaşı 6000 dəm asagi olan əasagi maasliə,6000den-10000 arası orta maasli, 10000dən çox olan yüksek maasli qeydi olan sütun yarad?n. 
select first_name,last_name,salary,
case when salary <6000 then 'a?a?? maa?l?' 
when salary >=6000 and salary <10000 then 'orta maa?l?' 
when  salary >=10000 then 'yuksek maa?l?'end maas from employees;


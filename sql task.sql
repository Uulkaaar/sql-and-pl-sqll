select * from employees;
select * from departments;
--- USER adlı cədvəl yaradın sütunları ad, soyad , telefon nömrəsi və fin kod olsun . Yratdığınız cədvələ öz datanızı əlavə edin.
--- Departament nömrəsi 30,50,80 olan işçilərin adını, soyadını və işə qəbul tarixi sütunu ekrana  çıxarın
   select first_name,last_name,hire_date from employees where department_id in ('30','50','80')
 ----maaş sütununa görə çoxdan aza, ad sütünuna görə A-z ə sıralama edən query yazın. ekrana ad və maaş sütunu çıxsın
     select * from employees order by first_name asc,salary desc
---Manager id si null olan işçinin ad,soyad və nömrəsin ekrana çıxar
select first_name,last_name,phone_number from employees where manager_id is null;

---Cədvəldə manager id=102 olan müştərinin job_id si AD_SU dəyiş
select * from employees  WHERE MANAGER_ID='102'   ;
update employees set job_id='AD_SU' WHERE MANAGER_ID='102';

---	ən çox maaş alan 10 işçinin adını və  soyadını qaytaracaq query yazın.
select salary,first_name,last_name from employees where rownum <=10 order by salary desc;

 
 ---  Adının uzunlugu 5-dən boyuk və  soyadının uzunlugu 6-dan boyuk olan və -- maaşı 1500-dən boyuk olan iscilərin adını, soyadını və maaşını qaytaracaq query yazn.

SELECT first_name, last_name, salary
  FROM (SELECT first_name, last_name, salary
          FROM employees
         WHERE salary > 1500)
  
 WHERE LENGTH (first_name) > 5 and LENGTH (last_name) > 6;
 
   --- Manager_id-si null olmayan, Department_id 100 və ya 101 olan, job_id-si AD_PRES olmayan işçilərin adını soyadını və maaşını maaşa görə sıralama ilə çıxsrın.

 SELECT first_name,
                 last_name,
                 salary,
                 department_id
            FROM employees
           WHERE manager_id IS NOT NULL AND JOB_ID != 'AD_PRES'
 and  department_id = 100 OR department_id = 101
ORDER BY salary;

   --- Commision_pct və ya manager_id-si null olan, maaşı 2000-3000 arasında olan işçıləri çıxarın.

SELECT first_name, last_name, salary
  FROM (SELECT first_name,
               last_name,
               salary,
               commission_pct,
               manager_id
          FROM employees
         WHERE salary BETWEEN 2000 AND 3000)
 WHERE commission_pct IS NULL OR manager_id IS NULL;


 --- Ad və soyad sutunlarını concat funksiyasiz birləşdirib tam ad olaraq gostərin, lakin ad və soyad arasında bosluq olsun


SELECT first_name || ' ' || last_name AS tam_ad FROM employees;

 --- Manager_id-si 100 ve ya 200 olan işçilərin əmək haqqına görə azdan çoxadoğru sıralanmış olsun.

  SELECT first_name, salary, manager_id FROM employees  WHERE manager_id in ('100','200') ORDER BY salary;


---  əmək haqqi 8000-dən  az olan işçilərin məlumatarını əmək haqqına görə çoxdan aza dogru siralayin

  SELECT * FROM employees WHERE salary < 8000 ORDER BY salary DESC;

 --- Adi “N” ilə başlayan işçilərin siyahisin ekrana cixar

SELECT * FROM employees WHERE first_name LIKE 'N%';

SELECT * FROM employees WHERE SUBSTR (first_name, 1, 1) = 'N';

---Hər departamentin ortalama əmək haqqını tapın hansı ki, ortalama əmək haqları 5000 dən bpyük olanlar ekrana çıxarın.(kəsr olanlar vergüldən sonra 2 ədəd yuvarlaqlaşdırın)
select round(avg(salary),2) ,department_id from employees group by department_id having avg(salary)>5000
   
 ---  her job id uzre minimum əmək haqqini ekrana cixar

  SELECT MIN (salary), job_id FROM employees GROUP BY job_id;
 ---  hər job id üzrə ümumi əmək haqqını hesablayin və ortalama əmək haqqi 6000dən cox olan job id-sini gosterin.

  SELECT AVG (salary), SUM (salary), job_id  FROM employees GROUP BY job_id HAVING AVG (salary) > 6000;
  
  ---	100 nömrəli departamentdə çalışan hər işçidən daha çox əmək  haqqı alan işçilərin siyahisin çixarin
   select * from employees where salary > (select max(salary) from employees where department_id = 100);

--- telefon  nömrəsi 5le baslayan iscilerin siyahisin cixarin
  select * from employees where phone_number like '5%'
     
--- Adlarin hər birini boyuk soyadlari ise kiçik herfle ekrana çixarin
  select upper(first_name),lower(last_name) from employees;

--- departamenti 90 olan işçilərin sayini tapn
select count(*) from employees where department_id=90;

---	40 nömrəli departamantdə çalışan işçilərin ortalama maaşndan daha çox ortalama maaşı olan  departamentləri göstərin.?
select avg(salary),department_id from employees group by department_id 
having avg(salary) > (select avg(salary) from hr.employees where department_id = 40);

--- maaşı 6000 dən aşagi olan aşagi maaşli,6000den-10000 arası orta maaşli, 10000dən çox olan yüksek maaşli qeydi olan sütun yaradin. 
select first_name,last_name,salary,
case when salary <6000 then 'asagi maasli' 
when salary >=6000 and salary <10000 then 'orta maaşlı' 
when  salary >=10000 then 'yuksek maaşlı'end maas from employees;

--- İşçinin ad soyad və departament adını ekrana çıxarın hansı ki, adı S lə və maaşı 7000 dən böyük olsun
select a.first_name, a.last_name,salary, b.department_name from employees a join departments b on a.department_id=b.department_id where a.first_name like 'S%'
and a.salary>7000


---  Employees cedvelinde komissiyasi olan iscilere komissiya var , olmayanlara ise komissiya yoxdur qeyd ile query yazin
select first_name,last_name ,case when commission_pct is null then 'komissiya yoxdur' else 'komissiyasi var' end case_when from employees ;

--- Neçə işçinin adı A ilə başlayıb r lə bitir
select * from employees where first_name like 'A%r' 
   
--- departament id=60 olan işçilərin sayı nə qədərdir?
select count(*) from employees where department_id='60'
   
--- department_id=100 olan işçilərin maaşını həmin departament üzrə minimum maaşına çevirin.
select employee_id, first_name,last_name,salary,first_value(salary) OVER (ORDER BY salary asc) as first_salary  from employees   where department_id=100
   

--- Bütün maaşların 20 faiz azaldılmasından alınan nəticə kəsr hissə olmadan  ekrana çıxarın
select round(( salary *0.8)) from employees;

---maaşlardan 22000 azaldın və nəticə həmişə müsbət olmalıdır
select abs(salary-20000) from employees;

--- maaş sütununu 3 böl əgər qalıq varsa yaz 'QALIQ yoxdur' əks halda 'Qalıq var' ekrana çıxarın
select case when mod(salary,3)=0 then 'qalıq yoxdur'
else 'qalıq var' end , salary,mod(salary,3) from employees;

---  -3-ci ən yüksək maaş alan işçinin adını qaytaracaq query yazın. 
select first_name,salary from employees order by salary desc;

SELECT *
  FROM (SELECT first_name,
               salary,
               DENSE_RANK () OVER (ORDER BY salary DESC) AS rownumm
          FROM employees)
 WHERE rownumm = 3; 
--- departamentlərinə görə muştərilərin adini və soyadin eyni sətirə yiğin

SELECT DEPARTMENT_ID,LISTAGG(first_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS name,
LISTAGG(last_name, ' , ') WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS surname  from employees group by DEPARTMENT_ID ;
 ---  departaments və employees cədvəllərini əlaqələndirib, müştərinin ad və department adını çıxarın

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;
   
--- departament adi Fin le başlamayan işçilərin adını çıxarın

SELECT e.first_name, D.DEPARTMENT_NAME
  FROM departments d JOIN employees e ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
 WHERE D.DEPARTMENT_ID NOT LIKE 'Fin%';

   
--- Her departament uzre maksimum maaşi çixaran query yazin. (Sutun olaraq maaş ve departament adi )
select max(a.salary), b.department_name from employees a join departments b on a.department_id=b.department_id 
group by b.department_name;

--- Hər departament üzrə maksimum maaş çıxaran query yazın (analytic funksiya ilə)
 select * from (select
employee_id,(first_name||' '||last_name),salary,
dense_rank() over( partition by department_id order by salary desc) myrank
from EMPLOYEES) where myrank=1  ;

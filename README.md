# sql-and-pl-sqll

SQL (Structured Query Language), verilənlər bazaları ilə əlaqə qurmaq və məlumatlara giriş etmək üçün istifadə olunan özəl dildir. SQL, verilənlər bazalarının yaradılması, dəyişdirilməsi, sorğulanması və idarə olunması üçün istifadə olunur. Bu dillə, məlumatların cədvəllərdə saxlanılması və bu cədvəllər arasında əlaqələrin qurulması üçün istifadə olunan əmrləri təyin edir. Əlavə olaraq, SQL, verilənlər bazasında indeksləmə, təhlil və optimizasiya kimi funksiyaların yerinə yetirilməsi üçün də istifadə olunur. Bu dil, müxtəlif verilənlər bazalarında - məsələn, MySQL, PostgreSQL, Microsoft SQL Server, Oracle Database kimi - istifadə olunur və geniş yayılmışdır. SQL commandaları yəni kateqoriyaları: DDL,DML,DRL,TCL DDL (Data Definition Language), verilənlər bazasının strukturlarını təyin etmək üçün istifadə olunan əmrləri ifadə edir. 
İş mühtində ən yayğın olan bir neçə DDL əmri:

CREATE: Yeni verilənlər bazası obyektini yaradır. Məsələn, yeni bir cədvəl yaradılması üçün CREATE TABLE, yeni bir indeks yaratmaq üçün CREATE İNDEX kimi.
ALTER: Mövcud verilənlər bazası obyektini dəyişdirir. Məsələn, bir cədvəlin sütunlarının dəyişdirilməsi üçün ALTER TABLE.
DROP: Verilənlər bazası obyektini silir. Məsələn, bir cədvəlin silinməsi üçün DROP TABLE, bir indeksin silinməsi üçün DROP INDEX.
TRUNCATE: Cədvəl içindəki bütün məlumatları silir, amma cədvəl özü silinmir, yalnız içindəki məlumatlar silinir. TCL (Transaction Control Language), tranzaksiyaların idarə edilməsi üçün istifadə olunan SQL əmrlərini ifadə edir.

İş mühitində ən yaygın TCL əmrləri:
COMMIT: Aktiv tranzaksiyanın dəyişikliklərini təsdiq edir. Bu əmr, tranzaksiyanın bütün dəyişikliklərini daimi hala gətirir və bazaya qeyd edilir.
ROLLBACK: Aktiv tranzaksiyanın bütün dəyişikliklərini geri alır. Yəni, tranzaksiya ilə əlaqəli bütün dəyişiklikləri ləğv edir.
SAVEPOINT: Tranzaksiya içində mövcud bir vəziyyəti xatırlayır. Bu, əgər bir xəta baş verərsə, tranzaksiyanın müvafiq bir nöqtəsindən davam etmək üçün istifadə olunur. Sonra, ROLLBACK əmrini bu xüsusi savepointə qədər etmək mümkündür. 
"DML" SQL-də "Data Manipulation Language"ın (Məlumatları İdarəetmə Dili) qısaltmasıdır. DML əsasən verilənlər bazasında məlumatları əlavə etmək, dəyişmək, silmək və ya sorğu etmək üçün istifadə olunur. 
İşte DML-in əsas əməlləri:
INSERT: Yeni məlumatlar əlavə etmək üçün istifadə olunur.
UPDATE: Mövcud məlumatları dəyişmək üçün istifadə olunur.
DELETE: Məlumatları silmək üçün istifadə olunur.: Bu əməllər SQL-də verilənlərin dəyişdirilməsinə və sorğuya əsaslanan məlumatları almağa imkan verir.
4 ."MERGE" SQL-də verilənlərin bir cütləşməsi və ya yenilənməsi əməllərini icra etmək üçün istifadə olunan bir əmrdir. Bu əmr, SQL Server, Oracle və digər bazaların bir çox tətbiqində mövcuddur. MERGE əmrini iki əsas məqsəd üçün istifadə edə bilərsiniz:
Cütləşmə (MATCHED): İki cədvəl arasında uyğunluqları yoxlamaq və uyğunluq tapılarsa müvafiq əmrləri icra etmək.
Yeniləmə (NOT MATCHED): İki cədvəl arasında uyğunluqları yoxlamaq və uyğunluq tapılmazsa yeni sətrləri əlavə etmək.
DRL, SQL-də "Data Retrieval Language"ın (Məlumatların Alınma Dili) qısaltmasıdır. Bu, verilənlərin sorğulanması və almaq üçün istifadə olunan bir dil növüdür.

SQL-də, verilənlərin əməliyyatları müxtəlif dil bölmələrinə bölünür və bu bölmələrdən biri də "Data Retrieval Language" yəni məlumatların alınma dili olan DRL-dir. DRL, verilənlərin alınması üçün istifadə olunan sorğu əməliyyatlarını daxil edir.
: Məlumat bazalarında "constraint" (məhdudlaşdırıcı) olaraq tanımlananlar, verilənlərin uyğunluğunu təmin etmək və bazadakı məlumatları qorumaq üçün istifadə olunan qaydalar və şərtlərdır. İşlədikləri funksiyalara görə müxtəlif növləri var:
Əsas məhdudlaşdırıcılar (Primary Key Constraints): Bir cədvəldə bir sütunun unikal olmasını və null olmamasını təmin edirlər. Bu, cədvəlin müəyyən bir sütunu tərəfindən təmsil edilən hər bir sətirin təyin edilməsinə imkan verir. Əsas məhdudlaşdırıcı sətirin təyin edilməmiş və ya bənzər sətirin olmamasını təmin edir.
Xarici məhdudlaşdırıcılar (Foreign Key Constraints): Bu məhdudlaşdırıcılar iki cədvəl arasındakı əlaqəni müəyyən edir. Bir cədvəldəki bir sütunun dəyərləri, digər cədvəldəki əlaqəli sütunun dəyərlərinə əsaslanır. Buna əsasən, bir cədvəldəki sütunun dəyəri, digər cədvəldə mövcud olmalıdır və ya müəyyən dəyərlərlə uyğunlaşmalıdır.
Bənzərlik məhdudlaşdırıcılar (Unique Constraints): Bir sütunda təkrarlanan dəyərləri qadağan edir. Bu, sütunda təkrarlanan dəyərləri saxlamaq qadağan olunur və bu sütunda unikal dəyərlər tələb olunur.
Null dəyəri məhdudlaşdırıcılar (Check Constraints): Bir sütunun dəyərini yoxlamaq üçün istifadə olunur. Məsələn, bir sütunda qəbul edilə biləcək maksimum və minimum dəyərləri təyin edə bilərsiniz.
Qeyri-aktiv məhdudlaşdırıcılar (Inactive Constraints): Bu, məhdudlaşdırıcıları müvəqqəti olaraq silmək və ya aktivləşdirmək üçün istifadə olunan bir növ məhdudlaşdırıcıdır. Bu məhdudlaşdırıcılar verilənlər bazasının inteqrasiyasını və düzgün funksionallaşmasını təmin etmək üçün əhəmiyyətli alətlərdir. Yenidən məlumat bazasının konsistensiyasını və məlumatların doğruluğunu təmin etməyə kömək edirlər.
Məsələn, bir verilənlər bazasından müəyyən bir cədvəldən məlumat almaq üçün bir DRL sorğusu istifadə edə bilərsiniz. Bu sorğu, müəyyən kriterlərə uyğun filtrlənmiş və ya sıralanmış məlumatları geri qaytarabilir.

Nümunəvi bir DRL sorğusu:

SELECT * FROM telebeler WHERE ixtisas = 'Kompüter Mühəndisliyi';


Bu sorğu, "Kompüter Mühəndisliyi" ixtisasına sahib olan telebələrin məlumatlarını geri qaytarır.
DRL əsasən SQL-də istifadə olunan bir hissədir. "Case when" ifadəsi, SQL-də müəyyən şərtlərə görə fərqli dəyərlər qaytarmaq üçün istifadə olunur. İf-else blokları ilə müqayisə oluna bilər. 
"Case when" ifadəsi, məlumatları şərtlərə görə sıralamaq və onlara müvafiq dəyərlər təyin etmək üçün çox işlənir.

Əgər bir SQL sorğusu yazarkən "case when" ifadəsindən istifadə etmək istəyirsinizsə, bunun nəzərə alınacağı tələbləri olacaq. Məsələn, bir məlumat bazasında mövcud olan müəyyən bir sütunun dəyərlərinə görə fərqli kateqoriyalar təyin etmək istəyirsinizsə, "case when" ifadəsindən istifadə edə bilərsiniz.

Nümunə olaraq, bir restoran verilənlər bazasında sifarişlərin hazırlanma vaxtına görə fərqli olaraq hesablanan qiymətlər təyin etmək istəyirsinizsə, "case when" ifadəsindən istifadə edə bilərsiniz. Belə bir SQL sorğusu azərbaycan dilində aşağıdakı kimi ola bilər:

SELECT sifariş_adı,
       qiymət = CASE
                  WHEN hazırlanma_vaxtı < 10 THEN 'Əlverişli qiymət'
                  WHEN hazırlanma_vaxtı >= 10 AND hazırlanma_vaxtı < 20 THEN 'Orta qiymət'
                  ELSE 'Yüksək qiymət'
               END AS qiymət_kateqoriyası
FROM sifarişlər;

Bu sorğu, sifariş adlarını və onların hazırlanma vaxtına görə qiymət kateqoriyasını göstərir. İf-dəyər bloklarını təqdim edən "case when" ifadəsi, hər sətirdə mövcud olan sifarişin hazırlanma vaxtına görə uyğun qiymət kateqoriyasını təyin edir.


SQL'də single-row funksiyalar, tək bir sətirə təsir edən və nəticədə tək bir dəyər qaytarən funksiyalardır. Bu funksiyalar, məlumatlara tətbiq edildikdə, hər bir sətir üçün ayrı-ayrı işləyir. single-row funksiyaların bir siyahısı:

ABS(): Ədədin mutləq dəyərini qaytarır.

UPPER(): Mətn sətrindəki bütün hərfləri böyük hərflərə çevirir.

LOWER(): Mətn sətrindəki bütün hərfləri kiçik hərflərə çevirir.

LEFT(): Mətn sətrinin sol tərəfindən başlayaraq müəyyən bir sayda simvolu qaytarır.

RIGHT(): Mətn sətrinin sağ tərəfindən başlayaraq müəyyən bir sayda simvolu qaytarır.

LEN(): Mətn sətrindəki simvolların sayını qaytarır.

LTRIM(): Mətn sətrində əvvələrdəki boşluqları silir.
MOD() : Ədədin digər ədədə bölünməsindən alınan qalığı tapır.

RTRIM(): Mətn sətrində sonlardakı boşluqları silir.

CONCAT(): İki və ya daha çox mətn sətrini birləşdirir.

SUBSTR() Mətinin istədiyiniz hissəsini kəsir VE S: . 
Aggregate funksiyalar, SQL-də məlumatların toplanması və təhlil edilməsi üçün istifadə olunan funksiyalardır. Bu funksiyalar, bir məlumat qrupunu birləşdirib bir dəyəri hesablayırlar. aggregate funksiyalar aşağıdkılardır:

SUM(): Bir sütundakı bütün dəyərlərin cəmini qaytarır.

AVG(): Bir sütundakı bütün dəyərlərin orta reytingini (ortalamasını) qaytarır.

COUNT(): Bir sütundakı bütün dəyərlərin sayını qaytarır.

MIN(): Bir sütundakı ən kiçik dəyəri qaytarır.

MAX(): Bir sütundakı ən böyük dəyəri qaytarır. 
Analytic funksiyalar SQL-də məlumat analizini və sıralamağın daha qeyri-adi və yüksək səviyyəli üsullarını təklif edir. Bu funksiyalar, standart SQL dillərində daxili və ya xarici tətbiqlərdə əsas məlumatları işləmək üçün çox istifadə olunur. İşte bəzi əsas analitik funksiyalar:

ROW_NUMBER(): Hər bir sətirə müəyyən bir qrup daxilində sıra nömrəsini əlavə edir.

RANK(): Hər bir sətirə müəyyən bir qrup daxilində rəqabət sırasını təyin edir. Eyni qiymətlər eyni rəqabət sırasına sahib olacaq.

DENSE_RANK(): Hər bir sətirə müəyyən bir qrup daxilində rəqabət sırasını təyin edir. Eyni qiymətlər eyni rəqabət sırasına sahib olacaq, lakin boşluqlar təyin edilmir.

LEAD(): Hər bir sətirə növbəti sətirin məlumatını qaytarır.

LAG(): Hər bir sətirə əvvəlki sətirin məlumatını qaytarır.

listag(): sutun üzrədəyərləri bir sətirə yıöır

FİRST_VALUE():bir məlumat dəsti içindəki bir sütundakı ilk dəyəri qaytarır

LAST_VALUE() bir məlumat dəsti içindəki bir sütundakı SON dəyəri qaytarır "GROUP BY" və "HAVING" SQL-də məlumatların qruplanması və şərtə əsaslanan filtrasiyası üçün istifadə olunan iki əsas əmrdir.

GROUP BY: Məlumatları bir və ya daha çox sütuna əsasən qruplara bölən SQL əmri. Bir sütunun dəyərləri buna əsasən qruplanır və hər qrup üçün bir sıra hesablanır. Əsas sintaksis belədir: SELECT sütun1, sütun2, ..., AGGREGATE_FUNKSIYA(sütun3) FROM cədvəl GROUP BY sütun1, sütun2, ...;

Burada AGGREGATE_FUNKSIYA əsasən hesablanan bir funksiya ola bilər (məsələn, SUM, AVG, MAX, MIN kimi).

HAVING: "HAVING" əmri, "GROUP BY" əmri ilə istifadə olunur və qrupların üzərində filtrasiya etmək üçün istifadə olunur. Məsələn, toplama funksiyasının nəticələrinə görə filtrasiya etmək üçün istifadə oluna bilər. Əsas sintaksis belədir: SELECT sütun1, sütun2, ..., AGGREGATE_FUNKSIYA(sütun3) FROM cədvəl GROUP BY sütun1, sütun2, ... HAVING şərt;

Burada şərt qrupların toplama funksiyalarının nəticələrinə görə təyin edilmiş şərtlərdən ibarətdir.

Məsələn, əgər bir cədvəldə işçilərin department idlərinə görə qruplaşdırılmış ortalama maaş məbləğin 3000-dən çox olduğu qrupları tapmaq istəyirsinizsə, SQL sorğusu aşağıdakı kimi görünə bilər:

SELECT dept_id, AVG(salary) AS ortalama_məbləğ FROM işçi GROUP BY dept_id HAVING AVG(salary) > 3000;

Məlumat bazalarında "JOIN" operatorları, iki və ya daha çox cədvəli birləşdirmək və məlumatları müəyyən şərtlərə əsasən təkrar etmək üçün istifadə olunur. JOIN operatorları məlumatları digər cədvəllərdə olduğu kimi bir cədvəldən seçilmiş sütunlar üzərindən birləşdirmək üçün istifadə olunur. İki əsas JOIN növü mövcuddur:

INNER JOIN: Bu, iki cədvəli birləşdirmək və yalnız hər iki cədvəldə eyni dəyərlərə malik olan sətrləri qaytarmaq üçün istifadə olunur. Əgər iki cədvəldə eyni dəyərlərə malik sətrlər yoxdursa, o zaman bu sətrlər nəzərə alınmır. INNER JOIN əsasəm ən çox istifadə olunan JOIN növüdür.

SELECT cədvəl1.sütun1, cədvəl2.sütun2 FROM cədvəl1 INNER JOIN cədvəl2 ON cədvəl1.əsas_sütun = cədvəl2.əsas_sütun;

OUTER JOIN: Bu, iki cədvəli birləşdirmək üçün istifadə olunur, amma INNER JOIN-dan fərqli olaraq, bəzən hər iki cədvəldə eyni dəyərlərə malik sətrlər olmasa da, bütün sətrləri qaytarır. OUTER JOIN növləri arasında "LEFT JOIN", "RIGHT JOIN" və "FULL JOIN" mövcuddur.

LEFT JOIN: Sol cədvəli əsas olaraq götürür və sağ cədvəldə uyğun dəyərləri tapa bilirsə, onları qaytarır. Əgər uyğun dəyərlər tapılmazsa, NULL dəyərini qaytarır.

RIGHT JOIN: RIGHT JOIN sol JOIN operatoru ilə tamamilə eynidir, lakin sağ cədvəli əsas kimi götürür. Sol cədvəldə uyğun dəyərləri tapa bilirsə, onları qaytarır. Əgər uyğun dəyərlər tapılmazsa, NULL dəyərini qaytarır.

FULL JOIN: FULL JOIN, həm sol, həm də sağ cədvəllərdə uyğun dəyərləri tapa bilirsə, onları qaytarır. Əgər uyğun dəyərlər tapılmazsa, NULL dəyərini qaytarır.

SELECT cədvəl1.sütun1, cədvəl2.sütun2 FROM cədvəl1 LEFT JOIN cədvəl2 ON cədvəl1.əsas_sütun = cədvəl2.əsas_sütun; "Cross Join" SQL-də iki cədvəlin hər bir sətrini digəri ilə bir-birinə birləşdirmək üçün istifadə olunan bir JOIN növüdür. Başqa bir deyilə, bu, bir cədvəlin hər bir sətri ilə digəri arasında birləşdirmə edir və nəticə olaraq, iki cədvəlin mümkün olan bütün kombinasiyalarını qaytarır.

N, M elementləri olan iki cədvəl arasında Cross Join icra edildikdə, nəticə olaraq N * M sətirli yeni bir cədvəl əldə edilir.

Əsas sintaksisi aşağıdakı kimi görünür:

SELECT * FROM cədvəl1 CROSS JOIN cədvəl2; Burada cədvəl1 və cədvəl2 iki fərqli cədvəlin adlarıdır. Bu sorğu, cədvəl1 və cədvəl2 cədvəlləri arasında bir Cross Join təşkil edir və hər iki cədvəlin bütün sətrlərinin kombinasiyasını qaytarır.

SQL'də alt sorğular (subqueries), əsas sorğunun içində başqa bir sorğu ifadəsi olan və nəticədə bir dəyər və ya sıra qaytarabilən sorğu nümunələridir. Alt sorğular müəyyən məqsədlər üçün istifadə olunur və SQL sorğularının funksionalitetini artırmaq üçün güclü alətlərdir. İşte bəzi yaygın alt sorğu növləri:

Single-row subquery: Bu alt sorğular yalnız bir sətr və bir sütun qaytarır. Ən çox SELECT ifadəsində istifadə olunur və nəticədə bir dəyər qaytarır.
SELECT column1 FROM table1 WHERE column2 = (SELECT MAX(column2) FROM table2); 2. Multiple-row subquery: Bu alt sorğular birdən çox sətr və ya sütun qaytarır. Genəliklə, IN, ANY, ALL operatorları ilə birlikdə istifadə olunur.

SELECT column1 FROM table1 WHERE column2 IN (SELECT column2 FROM table2 WHERE condition); 3. Correlated subquery: Bu alt sorğular əsas sorğunun daxilində olan sətrlərə asılıdır və hər bir əsas sorğu sətri üçün bir və ya bir neçə dəyər qaytarır.

SELECT column1 FROM table1 t1 WHERE column2 = (SELECT MAX(column2) FROM table2 WHERE t1.column3 = table2.column3); 4. Scalar subquery: Bu alt sorğular, bir dəyəri qaytarır və SELECT ifadəsi daxilində funksiya kimi istifadə olunur.

SELECT column1, (SELECT MAX(column2) FROM table2) AS max_value FROM table1; Bu alt sorğu növləri, SQL sorğularının funksionalitetini artırmaq və daha çətin sorğular tərtib etmək üçün istifadə olunur. Müxtəlif məqsədlər üçün fərqli növləri və operatorları istifadə etmək imkanı yaradır.

SQL-də "set operatorları" adlanan bəzi operatorlar mövcuddur. Bu operatorlar, iki və ya daha çox SQL sorğusunun nəticələrini birləşdirmək və müxtəlif müqayisələr etmək üçün istifadə olunur. Ən çox istifadə olunan set operatorları aşağıdakılardır:

UNION: Bu operator iki sorğunun nəticələrini birləşdirir və dublikatları aradan qaldırır. Əgər bir sorğunun nəticələri digəri ilə eyni olduğu halda, yalnız bir dəfə göstərilir. SELECT column1 FROM table1 UNION SELECT column1 FROM table2;

UNION ALL: Bu operator da iki sorğunun nəticələrini birləşdirir, lakin dublikatları aradan qaldırmaz.

SELECT column1 FROM table1 UNION ALL SELECT column1 FROM table2;

INTERSECT: Bu operator, iki sorğunun kəsişməsini qaytarır. Başqa bir deyilişlə, hər iki sorğunun eyni sətrlərini göstərir.

SELECT column1 FROM table1 INTERSECT SELECT column1 FROM table2;

EXCEPT (MINUS): Bu operator, birinci sorğunun nəticələrindən ikinci sorğunun nəticələrini çıxarır.

SELECT column1 FROM table1 EXCEPT SELECT column1 FROM table2;

Set operatorları SQL sorğularını bir araya gətirmək və müxtəlif nəticələri filtrasiya etmək üçün güclü alətlərdir. Müxtəlif cədvəllərdəki məlumatları birləşdirmək, kəsişdirmək və ya fərqləndirmək üçün istifadə oluna bilər.

"Procedural Language", proqramlaşdırma dillərinin bir növüdür və prosedural proqramlaşdırma paradigmasına əsaslanır. Bu dil, prosedur, funksiya, dövr, şərtlər kimi konstruksiyaları təmin edir və proqramın sətri-sətrinə icra olunmasını təmin edir.

Prosedural dillər, məsələn, C, Pascal, Fortran, PL/SQL və t. d. kimi proqramlaşdırma dilləri, ən yayğın olanlarındandır. Bu dillər, bir proqramın bir addım ardıcıl işləməsini təmin edir və proqramın nə vaxt hansı əmri yerinə yetirməli olduğunu müəyyənləşdirir.

Prosedural dillərin əsas xüsusiyyətləri aşağıdakılardır:

Dəyişənlər: Prosedural dillərdə dəyişənlər var və bu dəyişənlər proqramın icrası zamanı dəyişə bilər. Bu dəyişənlərə dəyərlər verilir və dəyişənlərin dəyərləri hesablamalarda istifadə olunur.

Prosedur və funksiyalar: Prosedural dillər prosedur və funksiyaları dəstəkləyir. Prosedur bir blok koddur ki, onu çağırdıqda, o blokda olan kodlar icra olunur. Funksiyalar isə prosedurlar kimi işləyir, ancaq dəyər qaytarır.

Dövrlər və şərtlər: Prosedural dillərdə dövr (loop) və şərt (condition) konstruksiyaları mövcuddur. Bu konstruksiyalar proqramın icrasını nəzərdən keçirərək müəyyən məqsədə nail olmağa kömək edir.

Altprogramlar: Prosedural dillərdə altprogramlar geniş yayılmışdır. Altprogramlar, prosedur və ya funksiyon kimi adlandırılır və onlar təkrarlanan funksionallıq hissələri üçün istifadə olunur.

PL/SQL blokları fərqli məqsədlərlə və fərqli funksiyalar üçün yazıla bilər. Əsasən, PL/SQL'də müxtəlif növlərə malik bloklar mövcuddur:

Anonymous Blocks (Naməlum Bloklar): Naməlum bloklar adından da aydın ola biləcəyi kimi, adlanmamış bloklardır. Adlanmamış bloklar proqram yazılırken istifadə edilir və tək dəfəlik icra olunur. Onlar adlanmış prosedur və funksiyaların yerinə keçə bilər və müvafiq funksiyonallıqları icra edə bilər. Bu bloklar genəlliklə SQL skriptlərinin hissəsi kimi yazılır.

Procedures (Prosedurlar): Prosedurlar, PL/SQL-də müəyyən əməliyyatları yerinə yetirən qrupladılmış SQL ifadələrdir. Prosedurlar parametrlər ala bilər və ya almadan istifadə edilə bilər. Onlar bir SQL skriptindən istənilən vaxt çağırıla bilər və prosedur kodlarını icra edə bilər.

Functions (Funksiyalar): Funksiyalar prosedurlarla oxşar, lakin fərqli olan, qiymət qaytarır. Yəni, funksiya bir dəyər qaytarır, prosedur isə heç bir dəyər qaytarmır. Funksiyalar məlumatları əldə etmək və onları hesablamaq üçün istifadə olunur.

Bu blok növləri PL/SQL-də fərqli məqsədlər və fərqli funksiyalar üçün istifadə olunur və proqramların təşkilatlanması və funksionallaşdırılması üçün əlverişlidir. Dövr operatorları PL/SQL'də dövr operatorları, təkrarlanan prosesləri icra etmək üçün istifadə olunur. Bu operatorlar proqram kodlarının bəzi hissələrinin birdən çox dəfə icra olunmasını təmin edir. İşte PL/SQL'də ən yaygın istifadə olunan dövr operatorları:

LOOP: LOOP operatoru, təkrarlanan prosesi hər zaman təkrar etmək üçün istifadə olunur. Bu, sonsuz dövr yaradıra bilər, buna görə də genəlliklə, dövrün içində bir çıxış şərti təyin edilməlidir. LOOP operatoru, EXIT və ya EXIT WHEN operatorları ilə birlikdə istifadə olunur.

LOOP -- Prosedur kodları EXIT WHEN condition; -- Dövrü burada sonlandırmaq üçün şərt təyin edilir END LOOP;

FOR LOOP: FOR LOOP operatoru, dövrlərin nömrələrinin sayını və adımını müəyyənləşdirmək üçün istifadə olunur. Bu, əsasən bir siyahıda elementləri işləmək və ya müəyyən bir aralıqda əməliyyatları icra etmək üçün istifadə olunur.

FOR i IN 1..10 LOOP -- Prosedur kodları END LOOP;

WHILE LOOP: WHILE LOOP operatoru, təkrarlanan prosesi şərt doğru olduğu müddətəcə icra etmək üçün istifadə olunur. Şərt yanlış olduğunda, dövr sonlanır.

WHILE condition LOOP -- Prosedur kodları END LOOP;

Dövr operatorları PL/SQL proqramlarında müxtəlif təkrarlanan prosesləri icra etmək üçün güclü alətlərdir. İstifadələrinə diqqət yetirmək və sonsuz dövrlərdən qaçınmaq üçün yaxşı bir şərtləndirmə əlavə etmək önəmlidir. Exception nədir? PL/SQL-də "exception" (istisna) sözü, proqramın icrası zamanı yaranan xətaları göstərmək və idarə etmək üçün istifadə olunur. PL/SQL proqramlarında, proqramın icrası zamanı müxtəlif növ xətalar yarana bilər, məsələn, daxil olunmuş məlumatın səhvli olması, əməliyyatların başa çatmaması və s. Bu xətaların qarşısını almaq və onları idarə etmək üçün PL/SQL istisna hissələri təyin edilir.

PL/SQL-də, istisna yaradıldıqda, onu qeyd etmək və bu istisnanın uyğun reaksiyasını təyin etmək üçün "EXCEPTION" bloku istifadə olunur. Bu blok, proqramın ümumi hissələrindən fərqli olaraq, yalnız xətalara reaksiya göstərmək üçün nəzərdə tutulur.

İstisna bloku genəlliklə aşağıdakı sintaksisə malikdir:

BEGIN -- Proqram kodları EXCEPTION WHEN exception_name1 THEN -- Xəta reaksiyası 1 WHEN exception_name2 THEN -- Xəta reaksiyası 2 ... WHEN OTHERS THEN -- Digər xəta reaksiyası END;

exception 3 növü var. User_exception- proqramçının təyin etdiyi xətalar Program_error-proqramın istifadəsi və ya ifadənin səhv istifadəsi ilə əlaqəli xətalar No_data_found- select əmri ilə işləyir və heç bir sətir qaytarmadığında çıxan xətadır

"Implicit cursor" (Gizli cursor), SQL sorğularını icra edərkən PL/SQL'də avtomatik olaraq yaradılan bir növ cursor-dur. PL/SQL'də bir SQL sorğusu yazdığınızda, SQL sorğusu PL/SQL tərəfindən avtomatik olaraq bir cursor-a bərpa edilir. Bu, verilənlər bazasından məlumatlar əldə etmək üçün istifadə edilir.

İmplicit cursor, SQL sorğusunun icrasını idarə edən bir PL/SQL elementidir. Onunla əməliyyatları icra etmək üçün ayrıca bir cursor açmaq və bağlamaq gərəkmir. Implicit cursor, SELECT, INSERT, UPDATE və DELETE kimi əməliyyatlar zamanı avtomatik olaraq yaradılır və idarə olunur.

Implicit cursor-ların istifadəsi sadədir. SQL sorğusunun icrası üçün nəzərdə tutulmuş olan məlumatları əldə etmək üçün onları istifadə edə bilərsiniz.

Implicit cursor-lar gƏnəlliklə tək bir nəticə dəstəsi ilə işləyir və tək bir sətrin işlənməsi mümkündür. Implicit cursor-ların əsas faydası, kodun daha oxunaqlı və qısa olmasıdır, çünki cursor açmaq və bağlamaq üçün əlavə kodlar yazmağa ehtiyac yoxdur. Bununla birlikdə, əgər bəzən cursor ilə əlaqəli spesifik əməliyyatları etmək lazım olsa, explicit cursor-lar daha çox istifadə olunur.

"Explicit cursor" (Açıq cursor), PL/SQL'də istifadəçinin özü tərəfindən yaradılan və idarə olunan bir cursor-dur. Implicit cursor-lardan fərqli olaraq, explicit cursor-lar, SQL sorğusunun nəticələrini özəl bir cursor vasitəsi ilə doldurmaq və idarə etmək üçün istifadə olunur.

Explicit cursor-lar genəlliklə aşağıdakı adımlar ilə istifadə olunur:

Cursor açılır ("OPEN" ifadəsi ilə).
Cursor-dan məlumatlar alınır ("FETCH" ifadəsi ilə).
Məlumatlar ilə işləmək üçün PL/SQL daxilində digər əməliyyatlar aparılır.
Cursor bağlanır ("CLOSE" ifadəsi ilə). 
Triger, verilənlər bazasında hansısa bir tədbir başladıqda avtomatik olaraq icra olunan bir PL/SQL bloku hesab edilir. Bu tədbirlər, məsələn, bir sətirin dəyişdirilməsi, əlavə edilməsi və ya silinməsi zamanı başlaya bilər. Trigerlər, verilənlər bazasının davranışını nəzərdən keçirən və məhdudiyyətlər tətbiq edən güclü alətlərdir.
Trigerlər iki əsas növə bölünür:

BEFORE Triger: Bu triger, hansısa bir əməliyyatın icrasından əvvəl başlayır. Məsələn, bir sətirin əlavə edilməsindən əvvəl nəzarət məqsədilə istifadə edilə bilər. Bu triger nəticədəki dəyişiklikləri təhlil edə bilər və əməliyyatın davam etməməsinə səbəb ola bilər.

AFTER Triger: Bu triger, hansısa bir əməliyyat tamamlandıqdan sonra başlayır. Məsələn, bir sətirin dəyişdirilməsindən sonra məlumatları yeniləmək üçün istifadə edilə bilər. Bu triger, əməliyyat başa çatdıqdan sonra dəyişiklikləri idarə etmək üçün istifadə olunur.

Trigerlər, verilənlər bazasında məhdudiyyətləri tətbiq etmək və daxili tənzimləmələri icra etmək üçün güclü alətlərdir. Müəyyən bir tədbir baş verdiyində, triger avtomatik olaraq icra olunur və təyin edilmiş PL/SQL kodu işlədir. Bu, verilənlər bazasının davranışını nizamlamaq və avtomatlaşdırmaq üçün əlverişli bir vasitədir. 

Job nədir? SQL dillərində, verilənlər bazasında avtomatik işləmək üçün tənzimləmə funksionallığı mövcuddur. Bu funksionallıq, belirli vaxt aralığında müəyyən SQL əməliyyatlarını avtomatik olaraq icra etmək üçün istifadə olunur. Bu, qarşıya alınan vəziyyətlər, həftəlik və ya aylıq hesablamalar, yeddi günlik məlumatların yığılması və s. üçün faydalı olur. Bu işləri icra etmək üçün verilənlər bazasında xüsusi iş tənzimləmə funksionallığı istifadə olunur.

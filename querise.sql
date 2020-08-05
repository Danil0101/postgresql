-- выведите всю таблицу
SELECT * FROM JaegersTable;

-- отобразите только не уничтоженных роботов
SELECT * FROM JaegersTable WHERE status = 'Active';

-- отобразите роботов нескольких серий, например Mark-1 и Mark-6
SELECT * FROM JaegersTable WHERE mark = 'Mark-1' OR mark = 'Mark-5';

-- отсортируйте таблицу по убыванию по столбцу mark
SELECT * FROM JaegersTable ORDER BY mark DESC;

-- отобразите самого старого робота
SELECT * FROM JaegersTable WHERE launch = (SELECT MIN(launch) FROM JaegersTable);

-- отобразите роботов, которые уничтожили больше всех kaiju
SELECT * FROM JaegersTable WHERE kaijuKill = (SELECT MAX(kaijuKill) FROM JaegersTable);

-- отобразите роботов, которые уничтожили меньше всех kaiju
SELECT * FROM JaegersTable WHERE kaijuKill = (SELECT MIN(kaijuKill) FROM JaegersTable);

-- отобразите средний вес роботов
SELECT AVG(weight) FROM JaegersTable;

-- увеличьте на единицу количество уничтоженных kaiju у роботов, которые до сих пор не разрушены
UPDATE JaegersTable SET kaijuKill = (kaijuKill + 1) WHERE status = 'Active';

-- удалите уничтоженных роботов
DELETE FROM JaegersTable WHERE status = 'Destroyed';
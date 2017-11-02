# Добавить разаработчикам поле (salary - зарплата)
USE BasicMySqlSyntax;
ALTER TABLE developers ADD salary decimal not null;

UPDATE developers SET salary = 4410 WHERE specialty = 'Java developer';
UPDATE developers SET salary = 4380 WHERE specialty = 'C++ developer';
UPDATE developers SET salary = 2860 WHERE specialty = 'Menenger';
UPDATE developers SET salary = 3470 WHERE specialty = 'QA';
UPDATE developers SET salary = 3620 WHERE specialty = 'Mobile developer';
UPDATE developers SET salary = 3730 WHERE specialty = 'Python developer';

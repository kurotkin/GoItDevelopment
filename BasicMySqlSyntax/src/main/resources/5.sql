# Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
USE BasicMySqlSyntax;

SELECT componies.name, customers.firs_name, customers.last_name FROM componies, customers WHERE
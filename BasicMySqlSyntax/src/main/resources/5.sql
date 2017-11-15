# Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
USE BasicMySqlSyntax;

SELECT companies.name, customers.firs_name, customers.last_name
FROM companies
  JOIN companies_projects ON companies_projects.companies_id = companies.id
  JOIN customers_projects ON customers_projects.projects_id = companies_projects.projects_id
  JOIN customers ON customers.id = customers_projects.customers_id
  JOIN projects ON projects.id = customers_projects.projects_id
GROUP BY companies.id
ORDER BY sum(projects.cost) ASC;
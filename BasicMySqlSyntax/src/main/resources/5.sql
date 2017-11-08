# Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
USE BasicMySqlSyntax;

SELECT companies.name, customers.firs_name, customers.last_name
FROM companies, companies_projects, customers_projects, projects, customers
WHERE companies.id = companies_projects.companies_id
      AND companies_projects.projects_id = customers_projects.projects_id
      AND customers_projects.customers_id = customers.id
GROUP BY customers.id
ORDER BY sum(projects.cost) ASC;

# Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
USE BasicMySqlSyntax;

SELECT componies.name, customers.firs_name, customers.last_name FROM componies, customers WHERE


SELECT projects.name, sum(developers.salary)
FROM developers, developer_projects, projects
WHERE developers.id = developer_projects.developer_id AND developer_projects.projects_id = projects.id
GROUP BY projects.name
ORDER BY sum(developers.salary) DESC
LIMIT 1;



SELECT companies.name, customers.firs_name, customers.last_name
FROM companies, companies_projects, customers_projects, customers
WHERE companies.id = companies_projects.companies_id AND companies_projects.projects_id
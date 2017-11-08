# Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль
USE BasicMySqlSyntax;

SELECT AVG(developers.salary)
FROM developers, developer_projects, projects
WHERE developers.id = developer_projects.developer_id AND projects.id = developer_projects.projects_id
ORDER BY projects.cost DESC
LIMIT 1;
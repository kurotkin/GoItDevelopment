# Найти самый дорогой проект (исходя из ЗП разработчиков)
USE BasicMySqlSyntax;

SELECT projects.name, sum(developers.salary)
FROM developers, developer_projects, projects
WHERE developers.id = developer_projects.developer_id AND developer_projects.projects_id = projects.id
GROUP BY projects.name
ORDER BY sum(developers.salary) DESC
LIMIT 1;
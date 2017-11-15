# Найти самый дорогой проект (исходя из ЗП разработчиков)
USE BasicMySqlSyntax;

SELECT projects.name, sum(developers.salary)
FROM  projects
  JOIN developer_projects ON developer_projects.projects_id = projects.id
  JOIN developers ON developers.id = developer_projects.developer_id
GROUP BY projects.name
ORDER BY sum(developers.salary) DESC
LIMIT 1;
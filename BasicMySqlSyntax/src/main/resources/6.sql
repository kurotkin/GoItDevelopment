# Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль
USE BasicMySqlSyntax;

SELECT AVG(developers.salary)
FROM developers
  JOIN developer_projects ON developer_projects.developer_id = developers.id
  JOIN projects ON (projects.id = developer_projects.projects_id
    AND projects.id IN (
      SELECT id
      FROM projects
      WHERE cost IN (SELECT min(projects.cost) FROM projects)
    )
  );
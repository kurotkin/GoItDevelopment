# Вычислить общую ЗП всех Java разработчиков
USE BasicMySqlSyntax;

SELECT SUM(salary) FROM developers WHERE specialty = 'Java developer';
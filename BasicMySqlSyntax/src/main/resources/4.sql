# Добавить поле (cost - стоимость) в таблицу Projects
USE BasicMySqlSyntax;
ALTER TABLE projects ADD cost decimal not null;

UPDATE projects SET cost = 10000 WHERE name = 'freeCodeCamp';
UPDATE projects SET cost = 25000 WHERE name = 'bootstrap';
UPDATE projects SET cost = 36000 WHERE name = 'react';
UPDATE projects SET cost = 22000 WHERE name = 'tensorflow';
UPDATE projects SET cost = 17000 WHERE name = 'vue';
UPDATE projects SET cost = 24800 WHERE name = 'awesome';
UPDATE projects SET cost = 37000 WHERE name = 'angular.js';
UPDATE projects SET cost = 23000 WHERE name = 'Font-Awesome';
UPDATE projects SET cost = 23500 WHERE name = 'electron';
UPDATE projects SET cost = 40100 WHERE name = 'swift';
UPDATE projects SET cost = 21456 WHERE name = 'nodejs';
UPDATE projects SET cost = 16546 WHERE name = 'atom';
UPDATE projects SET cost = 32456 WHERE name = 'Semantic-UI';
UPDATE projects SET cost = 62340 WHERE name = 'vscode';
UPDATE projects SET cost = 12456 WHERE name = 'redux';
UPDATE projects SET cost = 33140 WHERE name = 'golang';
UPDATE projects SET cost = 46795 WHERE name = 'jekyll';
UPDATE projects SET cost = 13487 WHERE name = 'ionic';
UPDATE projects SET cost = 24456 WHERE name = 'moment';


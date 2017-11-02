CREATE DATABASE IF NOT EXISTS BasicMySqlSyntax;
USE BasicMySqlSyntax;

DROP TABLE IF EXISTS customers_projects;
DROP TABLE IF EXISTS companies_projects;
DROP TABLE IF EXISTS developer_projects;
DROP TABLE IF EXISTS developer_skill;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS developers;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS companies;

CREATE TABLE IF NOT EXISTS skills(
  id int PRIMARY KEY,
  name VARCHAR(50) not NULL
);

CREATE TABLE IF NOT EXISTS projects(
  id int PRIMARY KEY,
  name VARCHAR(50) not NULL
);

CREATE TABLE IF NOT EXISTS companies(
  id int PRIMARY KEY,
  name VARCHAR(100) not NULL
);

CREATE TABLE IF NOT EXISTS developers(
  id int PRIMARY KEY,
  firs_name varchar(50) not null,
  last_name varchar(100) not null,
  specialty varchar(100) not null
);

CREATE TABLE IF NOT EXISTS customers(
  id int PRIMARY KEY,
  firs_name varchar(50) not null,
  last_name varchar(100) not null
);

CREATE TABLE IF NOT EXISTS developer_skill(
  developer_id int not null,
  skill_id int not null,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (skill_id) REFERENCES skills(id),

  UNIQUE (developer_id, skill_id)
);

CREATE TABLE IF NOT EXISTS developer_projects(
  developer_id int not null,
  projects_id int not null,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (projects_id) REFERENCES projects(id),

  UNIQUE (developer_id, projects_id)
);

CREATE TABLE IF NOT EXISTS customers_projects(
  customers_id int not null,
  projects_id int not null,

  FOREIGN KEY (customers_id) REFERENCES customers(id),
  FOREIGN KEY (projects_id) REFERENCES projects(id),

  UNIQUE (customers_id, projects_id)
);

CREATE TABLE IF NOT EXISTS companies_projects(
  companies_id int not null,
  projects_id int not null,

  FOREIGN KEY (companies_id) REFERENCES companies(id),
  FOREIGN KEY (projects_id) REFERENCES projects(id),

  UNIQUE (companies_id, projects_id)
);
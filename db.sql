DROP DATABASE IF EXISTS employee_db;

CREATE database employee_db;

USE employee_db;

CREATE TABLE `department` (
  `id` int PRIMARY KEY,
  `name` varchar(30)
);

CREATE TABLE `role` (
  `id` int PRIMARY KEY,
  `title` varchar(30),
  `salary` decimal,
  `department_id` int
);

CREATE TABLE `employee` (
  `id` int PRIMARY KEY,
  `first_name` varchar(30),
  `last_name` varchar(30),
  `role_id` int,
  `manager_id` int
);

ALTER TABLE `role` ADD FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

ALTER TABLE `employee` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `employee` ADD FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`);
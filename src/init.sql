-- Создаём базу данных с поддержкой кириллицы (ОДНОЙ СТРОКОЙ!)
CREATE DATABASE IF NOT EXISTS users_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE users_db;

-- Таблица пользователей с явной кодировкой
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Тестовые данные
INSERT INTO users(login, first_name, last_name) VALUES 
('admin', 'Иван', 'Иванов'),
('user1', 'Петя', 'Петров');

-- 🔹 ВАШ ПОЛЬЗОВАТЕЛЬ В ТАБЛИЦЕ (замените на свои данные!)
INSERT INTO users(login, first_name, last_name) VALUES 
('pyadukhov.tim', 'Тимофей', 'Пядухов');

-- 🔹 Создаём пользователя БД с логином на основе ФИО (замените пароль!)
CREATE USER IF NOT EXISTS 'pyadukhov.tim'@'%' IDENTIFIED BY 'pyaduhov_pass';
GRANT ALL PRIVILEGES ON users_db.* TO 'pyadukhov.tim'@'%';
FLUSH PRIVILEGES;

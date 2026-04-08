-- Создаём базу данных с поддержкой кириллицы
CREATE DATABASE IF NOT EXISTS users_db
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE users_db;

-- Таблица для хранения пользователей
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

-- Создаём пользователя и даём права
CREATE USER IF NOT EXISTS 'my_app'@'%' IDENTIFIED BY 'my_password';
GRANT ALL PRIVILEGES ON users_db.* TO 'my_app'@'%';
FLUSH PRIVILEGES;

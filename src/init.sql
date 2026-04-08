CREATE DATABASE IF NOT EXISTS users_db
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE users_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users(login, first_name, last_name) VALUES
('admin', 'Иван', 'Иванов'),
('user1', 'Петя', 'Петров');

CREATE USER IF NOT EXISTS 'my_app'@'%' IDENTIFIED BY 'my_password';
GRANT ALL PRIVILEGES ON users_db.* TO 'my_app'@'%';
FLUSH PRIVILEGES;

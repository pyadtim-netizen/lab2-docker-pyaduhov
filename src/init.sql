CREATE DATABASE IF NOT EXISTS users_db 
DEFAULT CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

USE users_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO users (full_name, email) VALUES 
('Тестовый Пользователь', 'test@example.com'),
('Алексей Жердев', 'alexey.zherdev@misis.ru'),
('Пядухов Тимофей Андреевич', 'pyaduhov@university.ru');

CREATE USER IF NOT EXISTS 'pyaduhov.tim'@'%' IDENTIFIED BY 'lab_pass123';
GRANT ALL PRIVILEGES ON users_db.* TO 'pyaduhov.tim'@'%';
FLUSH PRIVILEGES;

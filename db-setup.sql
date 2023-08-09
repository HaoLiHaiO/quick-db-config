-- Define your desired values here
SET @DB_NAME = 'your_database_name';
SET @DB_USER = 'your_username';
SET @DB_PASS = 'your_password';

-- Create the user
CREATE USER IF NOT EXISTS @DB_USER@'localhost' IDENTIFIED BY @DB_PASS;

-- Create the database
CREATE DATABASE IF NOT EXISTS @DB_NAME;

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON @DB_NAME.* TO @DB_USER@'localhost';

-- Reload privileges
FLUSH PRIVILEGES;

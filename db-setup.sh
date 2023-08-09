#!/bin/bash

# Just the skeleton for now - prompt the user for confidential info

DB_NAME="database_name"
DB_USER="username"
DB_PASS="password"

echo "Starting MariaDB setup..."

# Run commands within MariaDB
sudo mysql -u root <<EOF

-- Create the user
CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';

-- Create the database
CREATE DATABASE $DB_NAME;

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';

-- Reload privileges
FLUSH PRIVILEGES;

EXIT;

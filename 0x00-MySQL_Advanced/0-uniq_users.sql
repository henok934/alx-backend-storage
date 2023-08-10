
-- File: create_users_table.sql
-- Description: This script creates the 'users' table in the database.

-- Create a new table called "users"
CREATE TABLE IF NOT EXISTS users (
	id INT, 
	email VARCHAR(255),
	name VARCHAR(255)
	);

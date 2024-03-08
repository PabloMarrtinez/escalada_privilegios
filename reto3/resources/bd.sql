CREATE DATABASE IF NOT EXISTS db;

create user 'test'@'localhost' identified by 'bd-safe-password';
grant all privileges on db.* to 'test'@'localhost';

USE db;

CREATE TABLE users (
    username VARCHAR(255),
    password VARCHAR(255)
);

INSERT INTO users (username, password) VALUES ('boss', 'barcel0na1832');

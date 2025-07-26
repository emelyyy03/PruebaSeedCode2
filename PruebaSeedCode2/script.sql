CREATE DATABASE PruebaSeed
GO

USE PruebaSeed
GO

CREATE TABLE roles(
Id INT IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE users(
Id INT IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
role_Id INT NOT NULL,
FOREIGN KEY (role_Id) REFERENCES roles(Id)
)

INSERT INTO roles (name)
VALUES ('Administrador');

-- Insertar usuario con rol Administrador y contraseña MD5 ya hasheada
INSERT INTO users (name, email, password, role_Id)
VALUES (
    'Admin',
    'admin@gmail.com',
    '827ccb0eea8a706c4c34a16891f84e7b',
    (SELECT Id FROM roles WHERE name = 'Administrador')
);
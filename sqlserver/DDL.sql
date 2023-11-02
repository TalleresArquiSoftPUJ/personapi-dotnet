CREATE DATABASE persona_db;

USE persona_db;
EXEC sp_changedbowner 'sa';

CREATE TABLE persona (
    cc INT PRIMARY KEY,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    genero CHAR(1),
    edad INT
);

CREATE TABLE profesion (
    id INT PRIMARY KEY,
    nom VARCHAR(90),
    des TEXT
);

CREATE TABLE estudio (
    id_prof INT,
    cc_per INT,
    fecha DATE,
    univer VARCHAR(50),
    FOREIGN KEY (id_prof) REFERENCES profesion(id),
    FOREIGN KEY (cc_per) REFERENCES persona(cc)
);

CREATE TABLE telefono (
    num VARCHAR(15) PRIMARY KEY,
    oper VARCHAR(45),
    duenio INT,
    FOREIGN KEY (duenio) REFERENCES persona(cc)
);

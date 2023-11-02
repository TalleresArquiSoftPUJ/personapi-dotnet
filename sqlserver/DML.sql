USE persona_db;

INSERT INTO persona (cc, nombre, apellido, genero, edad) VALUES
(1001, 'Juan', 'Pérez', 'M', 30),
(1002, 'María', 'Gómez', 'F', 25),
(1003, 'Carlos', 'López', 'M', 28),
(1004, 'Laura', 'Díaz', 'F', 32),
(1005, 'Pedro', 'Martínez', 'M', 29);

INSERT INTO profesion (id, nom, des) VALUES
(1, 'Médico', 'Especialista en medicina general'),
(2, 'Ingeniero', 'Ingeniero de software'),
(3, 'Abogado', 'Derecho corporativo'),
(4, 'Arquitecto', 'Diseño de edificios'),
(5, 'Contador', 'Auditoría financiera');

INSERT INTO estudio (id_prof, cc_per, fecha, univer) VALUES
(1, 1001, '2022-01-15', 'Universidad Nacional'),
(2, 1002, '2021-05-20', 'Universidad de Ingeniería'),
(3, 1003, '2022-11-10', 'Universidad de Derecho'),
(4, 1004, '2023-03-05', 'Universidad de Arquitectura'),
(5, 1005, '2022-08-30', 'Universidad de Contaduría');

INSERT INTO telefono (num, oper, duenio) VALUES
('123456789', 'Claro', 1001),
('987654321', 'Movistar', 1002),
('555555555', 'Tigo', 1003),
('999999999', 'Claro', 1004),
('777777777', 'Movistar', 1005);



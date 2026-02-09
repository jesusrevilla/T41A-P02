INSERT INTO alumnos (matricula, nombre) VALUES
('170001', 'Juan Pérez'),
('170002', 'María López'),
('170003', 'Carlos Hernández'),
('170004', 'Ana Martínez'),
('170005', 'Luis Ramírez'),
('170006', 'Sofía Torres'),
('170007', 'Miguel Sánchez'),
('170008', 'Elena Gómez'),
('170009', 'Diego Cruz'),
('170010', 'Paula Díaz');

INSERT INTO profesores (nombre) VALUES
('Dr. Alejandro Ruiz'),
('Mtra. Gabriela Vargas'),
('Ing. Jorge Castillo'),
('Lic. Fernanda Soto'),
('Dr. Roberto Jiménez'),
('Mtra. Laura Morales'),
('Ing. Andrés Navarro'),
('Lic. Daniela Ortega'),
('Dr. Ernesto Aguilar'),
('Mtra. Verónica Silva');

INSERT INTO grupo (nombre, periodo, clave, horario, id_profesor) VALUES
('Grupo 1', '2025', 'S38A', '2025-01-15 08:00:00', 1),
('Grupo 2', '2025', 'S38E', '2025-01-15 10:00:00', 2),
('Grupo 3', '2025', 'T41A', '2025-01-15 12:00:00', 3),
('Grupo 4', '2025', 'T48A', '2025-01-16 08:00:00', 4),
('Grupo 5', '2025', 'S38A', '2025-01-16 10:00:00', 5),
('Grupo 6', '2025', 'S38E', '2025-01-16 12:00:00', 6),
('Grupo 7', '2025', 'T41A', '2025-01-17 08:00:00', 7),
('Grupo 8', '2025', 'T48A', '2025-01-17 10:00:00', 8),
('Grupo 9', '2025', 'S38A', '2025-01-17 12:00:00', 9),
('Grupo 10', '2025', 'S38E', '2025-01-18 08:00:00', 10);

INSERT INTO inscripciones (matricula, id_grupo) VALUES
('170001', 1),
('170002', 2),
('170003', 3),
('170004', 4),
('170005', 5),
('170006', 6),
('170007', 7),
('170008', 8),
('170009', 9),
('170010', 10);

INSERT INTO asistencia (matricula, id_grupo, fecha) VALUES
('170001', 1, '2025-02-01 08:00:00'),
('170002', 2, '2025-02-02 10:00:00'),
('170003', 3, '2025-02-03 12:00:00'),
('170004', 4, '2025-02-04 08:00:00'),
('170005', 5, '2025-02-05 10:00:00'),
('170006', 6, '2025-02-06 12:00:00'),
('170007', 7, '2025-02-07 08:00:00'),
('170008', 8, '2025-02-08 10:00:00'),
('170009', 9, '2025-02-09 12:00:00'),
('170010', 10, '2025-02-10 08:00:00');


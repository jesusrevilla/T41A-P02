-- Maestros
INSERT INTO maestros (nombre) VALUES
('Juan Pérez'), ('María López'), ('Carlos García'), ('Ana Martínez'),
('Luis Hernández'), ('Sofía Torres'), ('Miguel Sánchez'), ('Elena Ramírez'),
('Pedro Flores'), ('Laura Ortega');

-- Alumnos
INSERT INTO alumnos (matricula, nombre) VALUES
('183001', 'José Aguilar'), ('183002', 'Fernanda Ruiz'), ('183003', 'Daniel Gómez'),
('183004', 'Paola Chávez'), ('183005', 'Andrés Domínguez'), ('183006', 'Lucía Mendoza'),
('183007', 'Ricardo Castillo'), ('183008', 'Valeria Morales'), ('183009', 'Héctor Vázquez'),
('183010', 'Diana Soto');

-- Grupos
INSERT INTO grupos (periodo, seccion, nombre_grupo, id_maestro, clave_grupo, id_materia) VALUES
('2025-1', 'A', 'Grupo 1', 1, 'T1A1', 1),
('2025-1', 'B', 'Grupo 2', 2, 'T102', 2),
('2025-1', 'C', 'Grupo 3', 3, 'T1D3', 3),
('2025-1', 'D', 'Grupo 4', 4, 'T14A', 4),
('2025-1', 'E', 'Grupo 5', 5, 'T105', 5),
('2025-1', 'F', 'Grupo 6', 6, 'T106', 6),
('2025-1', 'G', 'Grupo 7', 7, 'T157', 7),
('2025-1', 'H', 'Grupo 8', 8, 'T108', 8),
('2025-1', 'I', 'Grupo 9', 9, 'T1A9', 9),
('2025-1', 'J', 'Grupo 10', 10, 'T110', 10);

-- Inscripciones
INSERT INTO inscripciones (matricula, periodo, seccion, fecha_inscripcion) VALUES
('183001','2025-1','A','2025-01-15'),
('183002','2025-1','B','2025-01-15'),
('183003','2025-1','C','2025-01-15'),
('183004','2025-1','D','2025-01-15'),
('183005','2025-1','E','2025-01-15'),
('183006','2025-1','F','2025-01-15'),
('183007','2025-1','G','2025-01-15'),
('183008','2025-1','H','2025-01-15'),
('183009','2025-1','I','2025-01-15'),
('183010','2025-1','J','2025-01-15');

-- Asistencia (algunos han faltado)
INSERT INTO asistencia (matricula, periodo, seccion, fecha_hora, presente, id_grupo) VALUES
('183001','2025-1','A','2025-09-01 08:00:00',TRUE,1),
('183002','2025-1','B','2025-09-01 08:00:00',FALSE,2),
('183003','2025-1','C','2025-09-01 08:00:00',TRUE,3),
('183004','2025-1','D','2025-09-01 08:00:00',TRUE,4),
('183005','2025-1','E','2025-09-01 08:00:00',FALSE,5),
('183006','2025-1','F','2025-09-01 08:00:00',TRUE,6),
('183007','2025-1','G','2025-09-01 08:00:00',FALSE,7),
('183008','2025-1','H','2025-09-01 08:00:00',TRUE,8),
('183009','2025-1','I','2025-09-01 08:00:00',TRUE,9),
('183010','2025-1','J','2025-09-01 08:00:00',FALSE,10);

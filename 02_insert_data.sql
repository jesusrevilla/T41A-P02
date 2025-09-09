-- Insertar período
INSERT INTO periodo (nombre, fecha_inicio, fecha_fin)
VALUES ('20253S', '2025-08-01', '2025-12-15');

-- Insertar maestros
INSERT INTO maestro (nombres, apellidos, email) VALUES
('Juan', 'Pérez', 'juan.perez@correo.com'),
('Carmen', 'Silva', 'carmen.silva@correo.com'),
('Diego', 'Luna', 'diego.luna@correo.com'),
('Rosa', 'Márquez', 'rosa.marquez@correo.com'),
('Andrés', 'Bello', 'andres.bello@correo.com'),
('Julia', 'Ríos', 'julia.rios@correo.com'),
('Sergio', 'Peña', 'sergio.pena@correo.com'),
('Alicia', 'Torres', 'alicia.torres@correo.com'),
('Iván', 'Cordero', 'ivan.cordero@correo.com'),
('Teresa', 'León', 'teresa.leon@correo.com');

-- Insertar alumnos
INSERT INTO alumno (matricula, nombres, apellidos, email) VALUES
('A001', 'Ana', 'Torres', 'ana.torres@correo.com'),
('A002', 'Luis', 'Gómez', 'luis.gomez@correo.com'),
('A003', 'María', 'López', 'maria.lopez@correo.com'),
('A004', 'Carlos', 'Ruiz', 'carlos.ruiz@correo.com'),
('A005', 'Laura', 'Méndez', 'laura.mendez@correo.com'),
('A006', 'Pedro', 'Sánchez', 'pedro.sanchez@correo.com'),
('A007', 'Sofía', 'Díaz', 'sofia.diaz@correo.com'),
('A008', 'Jorge', 'Ramírez', 'jorge.ramirez@correo.com'),
('A009', 'Elena', 'Castro', 'elena.castro@correo.com'),
('A010', 'Tomás', 'Ortega', 'tomas.ortega@correo.com');

-- Insertar grupos
INSERT INTO grupo (clave, nombre, id_periodo, id_maestro) VALUES
('T41A', 'Bases de Datos I', 1, 1),
('T41B', 'Bases de Datos I', 1, 2),
('T42A', 'Bases de Datos II', 1, 3),
('T42B', 'Bases de Datos II', 1, 4),
('T43A', 'Diseño de BD', 1, 5),
('T43B', 'Diseño de BD', 1, 6),
('T44A', 'SQL Avanzado', 1, 7),
('T44B', 'SQL Avanzado', 1, 8),
('T45A', 'PostgreSQL', 1, 9),
('T45B', 'PostgreSQL', 1, 10);

-- Insertar inscripciones
INSERT INTO inscripcion (id_alumno, id_grupo, fecha_inscripcion) VALUES
(1, 1, '2025-08-01'),
(2, 1, '2025-08-01'),
(3, 2, '2025-08-01'),
(4, 2, '2025-08-01'),
(5, 3, '2025-08-01'),
(6, 3, '2025-08-01'),
(7, 4, '2025-08-01'),
(8, 4, '2025-08-01'),
(9, 5, '2025-08-01'),
(10, 5, '2025-08-01');

-- Insertar asistencia
INSERT INTO asistencia (id_inscripcion, fecha, presente) VALUES
(1, '2025-09-01 08:00:00', TRUE),
(2, '2025-09-01 08:00:00', FALSE),
(3, '2025-09-01 10:00:00', TRUE),
(4, '2025-09-01 10:00:00', FALSE),
(5, '2025-09-01 12:00:00', TRUE),
(6, '2025-09-01 12:00:00', FALSE),
(7, '2025-09-01 14:00:00', TRUE),
(8, '2025-09-01 14:00:00', FALSE),
(9, '2025-09-01 16:00:00', TRUE),
(10, '2025-09-01 16:00:00', FALSE);

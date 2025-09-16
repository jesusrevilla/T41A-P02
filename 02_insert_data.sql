INSERT INTO estudiante(matricula, nombre, apellido) VALUES
('A001', 'Ana', 'Torres'),
('A002', 'Luis', 'Gómez'),
('A003', 'María', 'López'),
('A004', 'Carlos', 'Ruiz'),
('A005', 'Laura', 'Méndez'),
('A006', 'Pedro', 'Sánchez'),
('A007', 'Sofía', 'Díaz'),
('A008', 'Jorge', 'Ramírez'),
('A009', 'Elena', 'Castro'),
('A010', 'Tomás', 'Ortega');

INSERT INTO maestro(nombre, apellido) VALUES
('Juan', 'Pérez'),
('Carmen', 'Silva'),
('Diego', 'Luna'),
('Rosa', 'Márquez'),
('Andrés', 'Bello'),
('Julia', 'Ríos'),
('Sergio', 'Peña'),
('Alicia', 'Torres'),
('Iván', 'Cordero'),
('Teresa', 'León');

INSERT INTO grupo(periodo, materia, maestro_id) VALUES
('20253S', 'Bases de Datos I', 1),
('20253S', 'Bases de Datos I', 2),
('20253S', 'Bases de Datos II', 3),
('20253S', 'Bases de Datos II', 4),
('20253S', 'Diseño de BD', 5),
('20253S', 'Diseño de BD', 6),
('20253S', 'SQL Avanzado', 7),
('20253S', 'SQL Avanzado', 8),
('20253S', 'PostgreSQL', 9),
('20253S', 'PostgreSQL', 10);

INSERT INTO inscripcion(grupo_id, matricula, fecha_inscripcion) VALUES
(1, 'A001', '2025-08-01'),
(1, 'A002', '2025-08-01'),
(2, 'A003', '2025-08-01'),
(2, 'A004', '2025-08-01'),
(3, 'A005', '2025-08-01'),
(3, 'A006', '2025-08-01'),
(4, 'A007', '2025-08-01'),
(4, 'A008', '2025-08-01'),
(5, 'A009', '2025-08-01'),
(5, 'A010', '2025-08-01');

INSERT INTO asistencia(matricula, fecha_hora, presente) VALUES
('A001', '2025-09-01 08:00:00', TRUE),
('A002', '2025-09-01 08:00:00', FALSE),
('A003', '2025-09-01 10:00:00', TRUE),
('A004', '2025-09-01 10:00:00', FALSE),
('A005', '2025-09-01 12:00:00', TRUE),
('A006', '2025-09-01 12:00:00', FALSE),
('A007', '2025-09-01 14:00:00', TRUE),
('A008', '2025-09-01 14:00:00', FALSE),
('A009', '2025-09-01 16:00:00', TRUE),
('A010', '2025-09-01 16:00:00', FALSE);

-- Insertar alumnos
INSERT INTO alumno VALUES
('A001', 'Ana Torres'),
('A002', 'Luis Gómez'),
('A003', 'María López'),
('A004', 'Carlos Ruiz'),
('A005', 'Laura Méndez'),
('A006', 'Pedro Sánchez'),
('A007', 'Sofía Díaz'),
('A008', 'Jorge Ramírez'),
('A009', 'Elena Castro'),
('A010', 'Tomás Ortega');

-- Insertar maestros 
INSERT INTO maestro(id, nombre) VALUES
('M001','Mtro. Juan Pérez'),
('M002','Mtra. Carmen Silva'),
('M003','Mtro. Diego Luna'),
('M004','Mtra. Rosa Márquez'),
('M005','Mtro. Andrés Bello'),
('M006','Mtra. Julia Ríos'),
('M007','Mtro. Sergio Peña'),
('M008','Mtra. Alicia Torres'),
('M009','Mtro. Iván Cordero'),
('M010','Mtra. Teresa León');

-- Insertar grupos 
INSERT INTO grupo(id, periodo, seccion, materia, maestro_id) VALUES
('G001', '20253S', 'T48A', 'Bases de Datos I', 'M001'),
('G002', '20253S', 'T48A', 'Bases de Datos I', 'M002'),
('G003', '20253S', 'T48A', 'Bases de Datos II', 'M003'),
('G004', '20253S', 'T41A', 'Bases de Datos II', 'M004'),
('G005', '20253S', 'T41A', 'Diseño de BD', 'M005'),
('G006', '20253S', 'T41A', 'Diseño de BD', 'M006'),
('G007', '20253S', 'S38E', 'SQL Avanzado', 'M007'),
('G008', '20253S', 'S38E', 'SQL Avanzado', 'M008'),
('G009', '20253S', 'S38A', 'PostgreSQL', 'M009'),
('G010', '20253S', 'S38A', 'PostgreSQL', 'M010');

-- Insertar inscripciones
INSERT INTO inscripcion VALUES
('A001', 'G001', '2025-08-01'),
('A002', 'G002', '2025-08-01'),
('A003', 'G003', '2025-08-01'),
('A004', 'G004', '2025-08-01'),
('A005', 'G005', '2025-08-01'),
('A006', 'G006', '2025-08-01'),
('A007', 'G007', '2025-08-01'),
('A008', 'G008', '2025-08-01'),
('A009', 'G009', '2025-08-01'),
('A010', 'G010', '2025-08-01');

-- Insertar asistencia
INSERT INTO asistencia VALUES
('A001', '2025-09-01 08:00:00', TRUE, 'G001'),
('A002', '2025-09-01 08:00:00', FALSE, 'G002'),
('A003', '2025-09-01 10:00:00', TRUE, 'G003'),
('A004', '2025-09-01 10:00:00', FALSE, 'G004'),
('A005', '2025-09-01 12:00:00', TRUE, 'G005'),
('A006', '2025-09-01 12:00:00', FALSE, 'G006'),
('A007', '2025-09-01 14:00:00', TRUE, 'G007'),
('A008', '2025-09-01 14:00:00', FALSE, 'G008'),
('A009', '2025-09-01 16:00:00', TRUE, 'G009'),
('A010', '2025-09-01 16:00:00', FALSE, 'G010');

INSERT INTO alumno (matricula, nombre_alumno) VALUES
(001, 'Ana Torres'),
(002, 'Luis Gómez'),
(003, 'María López'),
(004, 'Carlos Ruiz'),
(005, 'Laura Méndez'),
(006, 'Pedro Sánchez'),
(007, 'Sofía Díaz'),
(008, 'Jorge Ramírez'),
(009, 'Elena Castro'),
(010, 'Tomás Ortega');

INSERT INTO maestro (nombre_maestro) VALUES
('Mtro. Juan Pérez'),
('Mtra. Carmen Silva'),
('Mtro. Diego Luna'),
('Mtra. Rosa Márquez'),
('Mtro. Andrés Bello'),
('Mtra. Julia Ríos'),
('Mtro. Sergio Peña'),
('Mtra. Alicia Torres'),
('Mtro. Iván Cordero'),
('Mtra. Teresa León');

INSERT INTO grupo (nombre_grupo) VALUES
('T41A'),
('T41B'),
('T42A'),
('T42B'),
('T43A'),
('T43B'),
('T44A'),
('T44B'),
('T45A'),
('T45B');

INSERT INTO materia (nombre_materia, id_maestro, id_grupo) VALUES
('Bases de Datos I', 1, 1),
('Bases de Datos I', 2, 2),
('Bases de Datos II', 3, 3),
('Bases de Datos II', 4, 4),
('Diseño de BD', 5, 5),
('Diseño de BD', 6, 6),
('SQL Avanzado', 7, 7),
('SQL Avanzado', 8, 8),
('PostgreSQL', 9, 9),
('PostgreSQL', 10, 10);

INSERT INTO inscripcion (id_alumno, id_grupo, periodo) VALUES
(1, 1, '20253S'),
(2, 1, '20253S'),
(3, 2, '20253S'),
(4, 2, '20253S'),
(5, 3, '20253S'),
(6, 3, '20253S'),
(7, 4, '20253S'),
(8, 4, '20253S'),
(9, 5, '20253S'),
(10, 5, '20253S');

INSERT INTO asistencia (id_inscripcion, id_materia, fecha_asistencia, estado_asistencia) VALUES
(1, 1, '2025-09-01', 'Asistio'),
(2, 1, '2025-09-01', 'Falto'),
(3, 2, '2025-09-01', 'Asistio'),
(4, 2, '2025-09-01', 'Falto'),
(5, 3, '2025-09-01', 'Asistio'),
(6, 3, '2025-09-01', 'Falto'),
(7, 4, '2025-09-01', 'Asistio'),
(8, 4, '2025-09-01', 'Falto'),
(9, 5, '2025-09-01', 'Asistio'),
(10, 5, '2025-09-01', 'Falto');

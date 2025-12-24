-- Inserción de carreras
INSERT INTO carrera (nombre) VALUES
('Ingeniería en Tecnologías de la Información');

-- Inserción de alumnos
INSERT INTO alumno (matricula, nombre, apellido) VALUES
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

-- Inserción de maestros
INSERT INTO maestro (nombre, apellido) VALUES
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

-- Inserción de grupos
-- NOTA: Se asume que 'Ingeniería en Tecnologías de la Información' tiene el id_carrera = 1
INSERT INTO grupo (clave, materia, periodo, id_maestro, id_carrera) VALUES
('T41A', 'Bases de Datos I', '20253S', 1, 1),
('T41B', 'Bases de Datos I', '20253S', 2, 1),
('T42A', 'Bases de Datos II', '20253S', 3, 1),
('T42B', 'Bases de Datos II', '20253S', 4, 1),
('T43A', 'Diseño de BD', '20253S', 5, 1),
('T43B', 'Diseño de BD', '20253S', 6, 1),
('T44A', 'SQL Avanzado', '20253S', 7, 1),
('T44B', 'SQL Avanzado', '20253S', 8, 1),
('T45A', 'PostgreSQL', '20253S', 9, 1),
('T45B', 'PostgreSQL', '20253S', 10, 1);

-- Inserción de inscripciones
-- NOTA: Los ID de alumno y grupo se basan en el orden de inserción anterior
INSERT INTO inscripcion (id_alumno, id_grupo) VALUES
(1, 1), -- Ana Torres en Bases de Datos I (T41A)
(2, 1), -- Luis Gómez en Bases de Datos I (T41A)
(3, 2), -- María López en Bases de Datos I (T41B)
(4, 2), -- Carlos Ruiz en Bases de Datos I (T41B)
(5, 3), -- Laura Méndez en Bases de Datos II (T42A)
(6, 3), -- Pedro Sánchez en Bases de Datos II (T42A)
(7, 4), -- Sofía Díaz en Bases de Datos II (T42B)
(8, 4), -- Jorge Ramírez en Bases de Datos II (T42B)
(9, 5), -- Elena Castro en Diseño de BD (T43A)
(10, 5); -- Tomás Ortega en Diseño de BD (T43A)

-- Inserción de asistencias
-- NOTA: Los ID de inscripción se basan en el orden de inserción anterior
INSERT INTO asistencia (id_inscripcion, presente) VALUES
(1, TRUE),
(2, FALSE),
(3, TRUE),
(4, FALSE),
(5, TRUE),
(6, FALSE),
(7, TRUE),
(8, FALSE),
(9, TRUE),
(10, FALSE);

-- ==============================================
-- AGREGAR INFORMACION
-- ==============================================

-- Grupos (10)
INSERT INTO grupos (codigo) VALUES
('S38A'), ('S38B'), ('S38C'), ('S38D'), ('S38E'),
('T41A'), ('T41B'), ('T41C'), ('T41D'), ('T41E');

-- Maestros (10)
INSERT INTO maestros (nombre, apellidos, departamento) VALUES
('Juan', 'Pérez', 'Matemáticas'),
('María', 'González', 'Lenguas'),
('Carlos', 'Ramírez', 'Ciencias'),
('Laura', 'Mendoza', 'Historia'),
('José', 'Santos', 'Química'),
('Ana', 'Torres', 'Biología'),
('Miguel', 'Suárez', 'Física'),
('Paula', 'Ortega', 'Artes'),
('David', 'López', 'Deportes'),
('Elena', 'Castro', 'Filosofía');

-- Cursos (relacionados con los maestros)
INSERT INTO cursos (nombre_curso, creditos, anio, id_maestro) VALUES
('Matemáticas I', 5, 2025, 1),
('Física II', 4, 2025, 3),
('Literatura', 3, 2025, 2),
('Historia', 4, 2025, 4),
('Química', 5, 2025, 5),
('Biología', 4, 2025, 6),
('Física I', 3, 2025, 7),
('Artes', 2, 2025, 8),
('Deportes', 2, 2025, 9),
('Filosofía', 3, 2025, 10);

-- Alumnos (10)
INSERT INTO alumnos (nombre, apellidos, fecha_nacimiento, matricula, correo, semestre, id_grupo) VALUES
('Ana', 'López', '2005-03-12', 1001, 'ana.lopez@correo.edu', 1, 1),
('Luis', 'Martínez', '2004-07-22', 1002, 'luis.martinez@correo.edu', 1, 2),
('Sofía', 'García', '2005-11-05', 1003, 'sofia.garcia@correo.edu', 1, 3),
('Diego', 'Ramírez', '2005-05-18', 1004, 'diego.ramirez@correo.edu', 1, 4),
('Lucía', 'Torres', '2004-09-09', 1005, 'lucia.torres@correo.edu', 2, 5),
('Mateo', 'Hernández', '2005-12-12', 1006, 'mateo.hernandez@correo.edu', 2, 6),
('Valeria', 'Sánchez', '2005-02-20', 1007, 'valeria.sanchez@correo.edu', 2, 7),
('Carlos', 'Mendoza', '2004-11-30', 1008, 'carlos.mendoza@correo.edu', 2, 8),
('Elena', 'Vega', '2005-08-25', 1009, 'elena.vega@correo.edu', 3, 9),
('Jorge', 'Cruz', '2005-04-10', 1010, 'jorge.cruz@correo.edu', 3, 10);

-- Inscripciones (10, una por alumno)
INSERT INTO inscripciones (id_alumno, id_curso, fecha, estado) VALUES
(1, 1, '2025-08-15', 'Activo'),
(2, 2, '2025-08-15', 'Activo'),
(3, 3, '2025-08-15', 'Activo'),
(4, 4, '2025-08-15', 'Activo'),
(5, 5, '2025-08-15', 'Activo'),
(6, 6, '2025-08-15', 'Activo'),
(7, 7, '2025-08-15', 'Activo'),
(8, 8, '2025-08-15', 'Activo'),
(9, 9, '2025-08-15', 'Activo'),
(10, 10, '2025-08-15', 'Activo');

-- Asistencia (10, una por inscripción)
INSERT INTO asistencia (id_inscripcion, fecha, presente) VALUES
(1, '2025-09-01', TRUE),
(2, '2025-09-01', TRUE),
(3, '2025-09-01', FALSE),
(4, '2025-09-01', TRUE),
(5, '2025-09-01', TRUE),
(6, '2025-09-01', FALSE),
(7, '2025-09-01', TRUE),
(8, '2025-09-01', TRUE),
(9, '2025-09-01', TRUE),
(10, '2025-09-01', FALSE);

-- ==============================================
-- AGREGAR INFORMACION
-- ==============================================

-- Grupos
INSERT INTO Grupos (codigo) VALUES
('S38A'), ('S38E'), ('T41A');

-- Profesores
INSERT INTO Profesor (nombre, apellidos, departamento) VALUES
('Juan', 'Pérez', 'Matemáticas'),
('María', 'González', 'Lenguas'),
('Carlos', 'Ramírez', 'Ciencias');

-- Cursos
INSERT INTO Curso (nombre_curso, creditos, año, id_profesor) VALUES
('Matemáticas I', 5, 2025, 1),
('Física II', 4, 2025, 3),
('Literatura', 3, 2025, 2);

-- Alumnos 
INSERT INTO Alumnos (nombre, apellidos, fecha_nacimiento, matricula, correo, semestre, id_grupo) VALUES
('Ana', 'López', '2005-03-12', 1001, 'ana.lopez@correo.edu', 1, 1),
('Luis', 'Martínez', '2004-07-22', 1002, 'luis.martinez@correo.edu', 1, 1),
('Sofía', 'García', '2005-11-05', 1003, 'sofia.garcia@correo.edu', 1, 1),
('Diego', 'Ramírez', '2005-05-18', 1004, 'diego.ramirez@correo.edu', 1, 1),
('Lucía', 'Torres', '2004-09-09', 1005, 'lucia.torres@correo.edu', 2, 2),
('Mateo', 'Hernández', '2005-12-12', 1006, 'mateo.hernandez@correo.edu', 2, 2),
('Valeria', 'Sánchez', '2005-02-20', 1007, 'valeria.sanchez@correo.edu', 2, 2),
('Carlos', 'Mendoza', '2004-11-30', 1008, 'carlos.mendoza@correo.edu', 2, 2),
('Elena', 'Vega', '2005-08-25', 1009, 'elena.vega@correo.edu', 3, 3),
('Jorge', 'Cruz', '2005-04-10', 1010, 'jorge.cruz@correo.edu', 3, 3),
('Mariana', 'Flores', '2005-06-15', 1011, 'mariana.flores@correo.edu', 3, 3),
('Ricardo', 'Ramírez', '2004-12-22', 1012, 'ricardo.ramirez@correo.edu', 3, 3);

-- Alumnos extra (10 adicionales)
INSERT INTO Alumnos (nombre, apellidos, fecha_nacimiento, matricula, correo, semestre, id_grupo) VALUES
('Paula', 'Hernández', '2005-01-18', 1013, 'paula.hernandez@correo.edu', 1, 1),
('Sebastián', 'Ortega', '2004-10-05', 1014, 'sebastian.ortega@correo.edu', 1, 1),
('Gabriela', 'Rivas', '2005-03-30', 1015, 'gabriela.rivas@correo.edu', 1, 2),
('Andrés', 'Pérez', '2005-07-11', 1016, 'andres.perez@correo.edu', 2, 2),
('Isabel', 'Torres', '2004-09-21', 1017, 'isabel.torres@correo.edu', 2, 2),
('Fernando', 'Luna', '2005-05-28', 1018, 'fernando.luna@correo.edu', 2, 2),
('Camila', 'Rojas', '2005-02-12', 1019, 'camila.rojas@correo.edu', 3, 3),
('Bruno', 'Sosa', '2004-11-14', 1020, 'bruno.sosa@correo.edu', 3, 3),
('Daniela', 'Mora', '2005-06-09', 1021, 'daniela.mora@correo.edu', 3, 3),
('Héctor', 'Vargas', '2005-08-03', 1022, 'hector.vargas@correo.edu', 3, 3);

-- Inscripciones (4 por materia)
INSERT INTO Inscripcion (id_alumno, id_curso, fecha, estado) VALUES
(1, 1, '2025-08-15', 'Activo'),
(2, 1, '2025-08-15', 'Activo'),
(3, 1, '2025-08-15', 'Activo'),
(4, 1, '2025-08-15', 'Activo'),

(5, 2, '2025-08-16', 'Activo'),
(6, 2, '2025-08-16', 'Activo'),
(7, 2, '2025-08-16', 'Activo'),
(8, 2, '2025-08-16', 'Activo'),

(9, 3, '2025-08-17', 'Activo'),
(10, 3, '2025-08-17', 'Activo'),
(11, 3, '2025-08-17', 'Activo'),
(12, 3, '2025-08-17', 'Activo');

-- Asistencia (puedes ir marcando TRUE o FALSE)
INSERT INTO Asistencia (id_inscripcion, fecha, presente) VALUES
(1, '2025-09-01', TRUE),
(2, '2025-09-01', TRUE),
(3, '2025-09-01', FALSE),
(4, '2025-09-01', TRUE),

(5, '2025-09-01', TRUE),
(6, '2025-09-01', FALSE),
(7, '2025-09-01', TRUE),
(8, '2025-09-01', TRUE),

(9, '2025-09-01', TRUE),
(10, '2025-09-01', TRUE),
(11, '2025-09-01', FALSE),
(12, '2025-09-01', TRUE);

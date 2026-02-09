--insercion de datos 
-- Insertar 50 estudiantes
INSERT INTO estudiante (matricula, nombre, apellidos, carrera) VALUES
('185001', 'Juan', 'Pérez López', 'ITI'),
('185002', 'María', 'Gómez Ramírez', 'ISTI'),
('185003', 'Pedro', 'Hernández Torres', 'ITEM'),
('185004', 'Ana', 'López Sánchez', 'ITMA'),
('185005', 'Luis', 'Martínez Díaz', 'LAG'),
('185006', 'Sofía', 'Ramírez Cruz', 'LMI'),
('185007', 'José', 'Fernández Ruiz', 'ITI'),
('185008', 'Laura', 'García Romero', 'ISTI'),
('185009', 'Miguel', 'Torres Vargas', 'ITEM'),
('185010', 'Elena', 'Sánchez Pineda', 'ITMA'),
('185011', 'Jorge', 'Castillo Ortiz', 'LAG'),
('185012', 'Isabel', 'Flores Jiménez', 'LMI'),
('185013', 'Ricardo', 'Mendoza Soto', 'ITI'),
('185014', 'Patricia', 'Núñez Campos', 'ISTI'),
('185015', 'Andrés', 'Ortega Ríos', 'ITEM'),
('185016', 'Carmen', 'Vega Cabrera', 'ITMA'),
('185017', 'Raúl', 'Santos Mora', 'LAG'),
('185018', 'Valeria', 'Reyes Herrera', 'LMI'),
('185019', 'Adrián', 'Chávez Lozano', 'ITI'),
('185020', 'Diana', 'Aguilar Medina', 'ISTI'),
('185021', 'Fernando', 'Paredes Silva', 'ITEM'),
('185022', 'Gabriela', 'Navarro Fuentes', 'ITMA'),
('185023', 'Héctor', 'Morales Delgado', 'LAG'),
('185024', 'Beatriz', 'Domínguez Tapia', 'LMI'),
('185025', 'Javier', 'Jiménez Rivera', 'ITI'),
('185026', 'Mónica', 'Vargas Espinoza', 'ISTI'),
('185027', 'Samuel', 'Cortés Bautista', 'ITEM'),
('185028', 'Paola', 'Castro Salinas', 'ITMA'),
('185029', 'Rodrigo', 'Suárez Andrade', 'LAG'),
('185030', 'Alejandra', 'Soto Beltrán', 'LMI'),
('185031', 'Ignacio', 'Guerrero Álvarez', 'ITI'),
('185032', 'Liliana', 'Peña Camacho', 'ISTI'),
('185033', 'Mauricio', 'Carrillo Rangel', 'ITEM'),
('185034', 'Rosa', 'Miranda Correa', 'ITMA'),
('185035', 'Sebastián', 'Pacheco Aguirre', 'LAG'),
('185036', 'Natalia', 'Rosales Cervantes', 'LMI'),
('185037', 'Oscar', 'Peralta Montoya', 'ITI'),
('185038', 'Rebeca', 'Salazar Palma', 'ISTI'),
('185039', 'Tomás', 'Mejía Arellano', 'ITEM'),
('185040', 'Claudia', 'Barrios Luna', 'ITMA'),
('185041', 'Pablo', 'Benítez Cordero', 'LAG'),
('185042', 'Teresa', 'Castañeda Arias', 'LMI'),
('185043', 'Emilio', 'Valdez Escobar', 'ITI'),
('185044', 'Verónica', 'Luna Carranza', 'ISTI'),
('185045', 'Hugo', 'Figueroa Lozoya', 'ITEM'),
('185046', 'Lorena', 'Campos Orozco', 'ITMA'),
('185047', 'Iván', 'Maldonado Cabrera', 'LAG'),
('185048', 'Silvia', 'Barrera Ortega', 'LMI'),
('185049', 'Manuel', 'Guzmán Lozano', 'ITI'),
('185050', 'Andrea', 'Serrano Morales', 'ISTI');

-- Insertar 10 maestros
INSERT INTO maestros (matricula, nombre, apellidos) VALUES
('900001', 'Carlos', 'Ramírez Torres'),
('900002', 'Martha', 'Hernández Díaz'),
('900003', 'Julián', 'Gómez Flores'),
('900004', 'Rocío', 'Pérez Castillo'),
('900005', 'Sergio', 'Martínez Reyes'),
('900006', 'Lucía', 'Sánchez Vargas'),
('900007', 'Alberto', 'López Morales'),
('900008', 'Daniela', 'Ramos Aguirre'),
('900009', 'Francisco', 'Ortega Salinas'),
('900010', 'Susana', 'Domínguez Pineda');

-- INSERTA 3 MATERIAS 

INSERT INTO materias(nombre, horasSemanales)VALUES
    ('Bases de datos', 3),
    ('Planeación y Control de la Producción', 5),
    ('Probabilidad y estadistica', 5);

-- Inserta 4 grupos
-- Insertar 4 grupos
INSERT INTO grupo (idMateria, matriculaMaestro, seccion, periodo) VALUES
(1, '900001', 'S38A', '20253S'), -- Bases de datos con maestro 900001
(2, '900002', 'S38E', '20253S'), -- Planeación y Control de la Producción con maestro 900002
(3, '900003', 'T41A', '20253S'), -- Probabilidad y estadística con maestro 900003
(1, '900004', 'T48A', '20253S'); -- Bases de datos (otro grupo) con maestro 900004

-- Insertar 15 inscripciones
INSERT INTO inscripcion (matriculaAlumno, idGrupo, periodo) VALUES
('185001', 'S38A', '20253S'),
('185002', 'S38A', '20253S'),
('185003', 'S38A', '20253S'),
('185004', 'S38E', '20253S'),
('185005', 'S38E', '20253S'),
('185006', 'S38E', '20253S'),
('185007', 'T41A', '20253S'),
('185008', 'T41A', '20253S'),
('185009', 'T41A', '20253S'),
('185010', 'T48A', '20253S'),
('185011', 'T48A', '20253S'),
('185012', 'T48A', '20253S'),
('185013', 'S38A', '20253S'),
('185014', 'S38E', '20253S'),
('185015', 'T41A', '20253S');

-- Insertar asistencias para los 15 alumnos (2 días cada uno)
INSERT INTO asistencia (idAsistencia, matriculaAlumno, fechaHora, idGrupo, periodo, presente) VALUES
-- Alumno 185001 - Grupo S38A
('A001', '185001', '2025-09-01 08:00:00', 'S38A', '20253S', TRUE),
('A002', '185001', '2025-09-02 08:00:00', 'S38A', '20253S', TRUE),

-- Alumno 185002 - Grupo S38A
('A003', '185002', '2025-09-01 08:00:00', 'S38A', '20253S', FALSE),
('A004', '185002', '2025-09-02 08:00:00', 'S38A', '20253S', TRUE),

-- Alumno 185003 - Grupo S38A
('A005', '185003', '2025-09-01 08:00:00', 'S38A', '20253S', TRUE),
('A006', '185003', '2025-09-02 08:00:00', 'S38A', '20253S', TRUE),

-- Alumno 185004 - Grupo S38E
('A007', '185004', '2025-09-01 10:00:00', 'S38E', '20253S', TRUE),
('A008', '185004', '2025-09-02 10:00:00', 'S38E', '20253S', FALSE),

-- Alumno 185005 - Grupo S38E
('A009', '185005', '2025-09-01 10:00:00', 'S38E', '20253S', TRUE),
('A010', '185005', '2025-09-02 10:00:00', 'S38E', '20253S', TRUE),

-- Alumno 185006 - Grupo S38E
('A011', '185006', '2025-09-01 10:00:00', 'S38E', '20253S', FALSE),
('A012', '185006', '2025-09-02 10:00:00', 'S38E', '20253S', TRUE),

-- Alumno 185007 - Grupo T41A
('A013', '185007', '2025-09-01 12:00:00', 'T41A', '20253S', TRUE),
('A014', '185007', '2025-09-02 12:00:00', 'T41A', '20253S', TRUE),

-- Alumno 185008 - Grupo T41A
('A015', '185008', '2025-09-01 12:00:00', 'T41A', '20253S', TRUE),
('A016', '185008', '2025-09-02 12:00:00', 'T41A', '20253S', FALSE),

-- Alumno 185009 - Grupo T41A
('A017', '185009', '2025-09-01 12:00:00', 'T41A', '20253S', TRUE),
('A018', '185009', '2025-09-02 12:00:00', 'T41A', '20253S', TRUE),

-- Alumno 185010 - Grupo T48A
('A019', '185010', '2025-09-01 14:00:00', 'T48A', '20253S', TRUE),
('A020', '185010', '2025-09-02 14:00:00', 'T48A', '20253S', TRUE),

-- Alumno 185011 - Grupo T48A
('A021', '185011', '2025-09-01 14:00:00', 'T48A', '20253S', FALSE),
('A022', '185011', '2025-09-02 14:00:00', 'T48A', '20253S', TRUE),

-- Alumno 185012 - Grupo T48A
('A023', '185012', '2025-09-01 14:00:00', 'T48A', '20253S', TRUE),
('A024', '185012', '2025-09-02 14:00:00', 'T48A', '20253S', TRUE),

-- Alumno 185013 - Grupo S38A
('A025', '185013', '2025-09-01 08:00:00', 'S38A', '20253S', TRUE),
('A026', '185013', '2025-09-02 08:00:00', 'S38A', '20253S', FALSE),

-- Alumno 185014 - Grupo S38E
('A027', '185014', '2025-09-01 10:00:00', 'S38E', '20253S', TRUE),
('A028', '185014', '2025-09-02 10:00:00', 'S38E', '20253S', TRUE),

-- Alumno 185015 - Grupo T41A
('A029', '185015', '2025-09-01 12:00:00', 'T41A', '20253S', FALSE),
('A030', '185015', '2025-09-02 12:00:00', 'T41A', '20253S', TRUE);

INSERT INTO alumno (matricula, nombre) VALUES
(181730, 'Ana Ramírez'),
(181731, 'Luis Fernández'),
(181732, 'María González'),
(181733, 'Carlos Méndez'),
(181734, 'Laura Ortiz'),
(181735, 'Pedro Castillo'),
(181736, 'Sofía Morales'),
(181737, 'Jorge Vásquez'),
(181738, 'Elena Navarro'),
(181739, 'Tomás Delgado');

INSERT INTO cursos (nombre_curso) VALUES
('Matemáticas I'),
('Matemáticas II'),
('Física I'),
('Física II'),
('Química General'),
('Programación Básica'),
('Programación Avanzada'),
('Algoritmos'),
('Redes de Computadoras'),
('Bases de Datos');

INSERT INTO maestros (nombre) VALUES
('Mtro. Pedro López'),
('Mtra. Alicia Fernández'),
('Mtro. Jorge Sánchez'),
('Mtra. Claudia Ruiz'),
('Mtro. Enrique Martínez'),
('Mtra. Lucía Pérez'),
('Mtro. Ricardo Gómez'),
('Mtra. Natalia Torres'),
('Mtro. Andrés Ramírez'),
('Mtra. Diana Flores');

INSERT INTO grupos (periodo, seccion, nombre_grupo, id_curso, id_maestro) VALUES
('20253S', 'G01', 'Matemáticas I - G01', 1, 1),
('20253S', 'G02', 'Matemáticas I - G02', 1, 2),
('20253S', 'G03', 'Física I - G03', 3, 3),
('20253S', 'G04', 'Física I - G04', 3, 4),
('20253S', 'G05', 'Química Gen - G05', 5, 5),
('20253S', 'G06', 'Prog Básica - G06', 6, 6),
('20253S', 'G07', 'Prog Avanzada - G07', 7, 7),
('20253S', 'G08', 'Algoritmos - G08', 8, 8),
('20253S', 'G09', 'Redes - G09', 9, 9),
('20253S', 'G10', 'Bases Datos - G10', 10, 10);

INSERT INTO inscripcion (matricula, periodo, seccion, fecha_inscripcion) VALUES
(181730, '20253S', 'G01', '2025-09-01'),
(181731, '20253S', 'G01', '2025-09-01'),
(181732, '20253S', 'G02', '2025-09-01'),
(181733, '20253S', 'G02', '2025-09-01'),
(181734, '20253S', 'G03', '2025-09-01'),
(181735, '20253S', 'G03', '2025-09-01'),
(181736, '20253S', 'G04', '2025-09-01'),
(181737, '20253S', 'G04', '2025-09-01'),
(181738, '20253S', 'G05', '2025-09-01'),
(181739, '20253S', 'G05', '2025-09-01');

INSERT INTO asistencia (matricula, periodo, seccion, fecha_hora, presente) VALUES
(181730, '20253S', 'G01', '2025-09-10 08:00:00', TRUE),
(181731, '20253S', 'G01', '2025-09-10 08:00:00', FALSE),
(181732, '20253S', 'G02', '2025-09-10 10:00:00', TRUE),
(181733, '20253S', 'G02', '2025-09-10 10:00:00', TRUE),
(181734, '20253S', 'G03', '2025-09-10 12:00:00', FALSE),
(181735, '20253S', 'G03', '2025-09-10 12:00:00', TRUE),
(181736, '20253S', 'G04', '2025-09-10 14:00:00', TRUE),
(181737, '20253S', 'G04', '2025-09-10 14:00:00', FALSE),
(181738, '20253S', 'G05', '2025-09-10 16:00:00', TRUE),
(181739, '20253S', 'G05', '2025-09-10 16:00:00', FALSE);

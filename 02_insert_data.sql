INSERT INTO alumnos (matricula, nombre) VALUES 
('174774', 'Carlos Ramírez'),
('172000', 'María López'),
('179884', 'José Hernández'),
('170879', 'Sara Santos'),
('171100', 'Sebastian Gutierrez'),
('172099', 'Mauricio Perez'),
('170891', 'Kala Flores'),
('178477', 'Hector Fenandez'),
('170011', 'Darla Soto'),
('174653', 'Natasha Verastegui');

SELECT * FROM alumnos;

INSERT INTO maestros (nombre) VALUES 
('Mtra. Ana Torres'), 
('Mtro. Luis Gómez'), 
('Mtro. Reyes'), 
('Mtra. Ma de Jesus'),
('Mtra. Fenanda López'), 
('Mtro. Alejandro Duate'), 
('Mtro. Frida Gamez'), 
('Mtra. Daniela Sanchez'),
('Mtro. Oscar Gales'), 
('Mtro. Pablo Moreno');

SELECT * FROM maestros;

INSERT INTO grupos (periodo, seccion, nombre_grupo, id_maestro) VALUES 
('20253S', 'S38A', 'BD', 1),
('20253S', 'S38B', 'BD', 2), 
('20253S', 'S38E', 'IA', 3),
('20253S', 'S38F', 'IA', 4),
('20253S', 'T41A', 'Ing Sw', 5),
('20253S', 'T41B', 'Ing Sw', 6),
('20253S', 'T84A', 'IA 2', 7),
('20253S', 'T84B', 'IA 2', 8),
('20253S', 'T88A', 'PostgreSQL', 9),
('20253S', 'T88B', 'PostgreSQL', 10);

SELECT * FROM grupos;

INSERT INTO inscripciones (matricula, periodo, seccion, fecha_inscripcion)
VALUES 
('174774', '20253S', 'T41A', '2025-07-04'),
('172000', '20253S', 'S38E', '2025-06-29'),
('179884', '20253S', 'T84A', '2025-07-16'),
('170879', '20253S', 'S38A', '2025-07-01'),
('171100', '20253S', 'S38B', '2025-06-28'),
('172099', '20253S', 'S38F', '2025-07-02'),
('170891', '20253S', 'T41B', '2025-07-29'),
('178477', '20253S', 'T84B', '2025-07-15'),
('170011', '20253S', 'T88A', '2025-07-04'),
('174653', '20253S', 'T88B', '2025-07-02');

SELECT * FROM inscripciones;

INSERT INTO asistencia (matricula, periodo, seccion,fecha_a, presente)
VALUES 
('174774', '20253S', 'T41A', NOW(), TRUE),
('172000', '20253S', 'S38E', NOW(), TRUE),
('179884', '20253S', 'T84A', NOW(), FALSE),
('170879', '20253S', 'S38A', NOW(), FALSE),
('171100', '20253S', 'S38B', NOW(), TRUE),
('172099', '20253S', 'S38F', NOW(), FALSE),
('170891', '20253S', 'T41B', NOW(), TRUE),
('178477', '20253S', 'T84B', NOW(), TRUE),
('170011', '20253S', 'T88A', NOW(), TRUE),
('174653', '20253S', 'T88B', NOW(), FALSE);

SELECT * From asistencia;

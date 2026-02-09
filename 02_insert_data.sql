INSERT INTO alumnos (nombre) VALUES
 ('Ana'),('Bruno'),('Carla'),('Diego'),('Elena'),
 ('Fer'),('Gina'),('Hugo'),('Iris'),('Jorge');

INSERT INTO maestros (nombre) VALUES
 ('Mtro. A'),('Mtro. B'),('Mtra. C'),('Mtro. D'),('Mtra. E'),
 ('Mtro. F'),('Mtra. G'),('Mtro. H'),('Mtra. I'),('Mtro. J');

INSERT INTO grupos (nombre, maestro_id) VALUES
 ('G-01', 1),('G-02', 2),('G-03', 3),('G-04', 4),('G-05', 5),
 ('G-06', 6),('G-07', 7),('G-08', 8),('G-09', 9),('G-10', 10);

INSERT INTO inscripciones (alumno_id, grupo_id) VALUES
 (1,1),(2,2),(3,3),(4,4),(5,5),
 (6,6),(7,7),(8,8),(9,9),(10,10);

INSERT INTO asistencia (inscripcion_id, fecha, presente) VALUES
 (1,  '2025-09-01', TRUE),
 (2,  '2025-09-02', FALSE),
 (3,  '2025-09-03', TRUE),
 (4,  '2025-09-04', FALSE),
 (5,  '2025-09-05', TRUE),
 (6,  '2025-09-06', TRUE),
 (7,  '2025-09-07', FALSE),
 (8,  '2025-09-08', TRUE),
 (9,  '2025-09-09', TRUE),
 (10, '2025-09-10', FALSE);

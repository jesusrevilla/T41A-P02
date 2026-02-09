-- Insertar carreras
INSERT INTO carrera (nombre) VALUES ('ITI'),('LAG'),('ISTI'),('LMI'),('ITMA'),('ITEM');

-- Insertar alumnos
INSERT INTO alumno (matricula ,nombre, apellido_paterno, apellido_materno, id_carrera) VALUES
('181920', 'Ana','Torres','López', 1),
('181232', 'Luis','Gómez','Ortiz', 1),
('178902', 'María','López','Gonzales', 1),
('178930', 'Carlos','Ruiz','López', 1),
('191818', 'Laura','Méndez','Torres', 1),
('182023', 'Pedro','Sánchez','Ruiz', 1),
('182934', 'Sofía','Díaz','Gonzales', 1),
('124564', 'Jorge','Ramírez','Méndez', 1),
('123456', 'Elena','Castro','Ramírez', 1),
('183453', 'Tomás','Ortega','Ortiz', 1);

-- Insertar maestros
INSERT INTO maestro(nombre,apellido_paterno,apellido_materno) VALUES
('Mtro. Juan','Pérez','Torres'),
('Mtra. Carmen','Silva','Ruiz'),
('Mtro. Diego','Luna','Ramírez'),
('Mtra. Rosa','Márquez','López'),
('Mtro. Andrés','Bello','Méndez'),
('Mtra. Julia','Ríos','Ortiz'),
('Mtro. Sergio','Peña','Ortega'),
('Mtra. Alicia','Torres','Torres'),
('Mtro. Iván','Cordero','Castro'),
('Mtra. Teresa','León','Díaz');

-- Insertar materias
INSERT INTO materia(codigo,nombre,id_carrera) VALUES 
('T41','Base de Datos I',1),
('T42','Base de Datos II',1),
('T43','Diseño de BD',1),
('T44','SQL Avanzado',1),
('T45','PostgreSQL',1);

-- Insertar grupos
INSERT INTO grupo(id_maestro,codigo_materia,codigo_grupo,periodo) VALUES
(1,'T41','A','20253S'),
(2,'T41','B','20253S'),
(3,'T42','A','20253S'),
(4,'T42','B','20253S'),
(5,'T43','A','20253S'),
(6,'T43','B','20253S'),
(7,'T44','A','20253S'),
(8,'T44','B','20253S'),
(9,'T45','A','20253S'),
(10,'T45','B','20253S');

-- Insertar inscripciones
INSERT INTO inscripcion(matricula,id_grupo) VALUES
('181920',1),
('181232',1),
('178902',2),
('178930',2),
('191818',3),
('182023',3),
('182934',4),
('124564',4),
('123456',5),
('183453',5);

-- Asistencia (algunos ausentes)
INSERT INTO asistencia(id_inscripcion,fecha_hora,asistio) VALUES
(1,'2025-09-01 08:00:00',TRUE),
(2,'2025-09-01 08:00:00',FALSE),
(3,'2025-09-01 10:00:00',TRUE),
(4,'2025-09-01 10:00:00',FALSE),
(5,'2025-09-01 12:00:00',TRUE),
(6,'2025-09-01 12:00:00',FALSE),
(7,'2025-09-01 14:00:00',TRUE),
(8,'2025-09-01 14:00:00',FALSE),
(9,'2025-09-01 16:00:00',TRUE),
(10,'2025-09-01 16:00:00',FALSE);

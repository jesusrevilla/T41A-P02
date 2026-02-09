INSERT INTO estudiante (matricula, nombre) VALUES 
('179761', 'Coral Dominguez'),
('183824', 'Alejandra Ruiz'),
('179760', 'Juan Perez'),
('182550', 'Ana Torres'),
('178888', 'Tomás Ortega'),
('181824', 'Jorge Ramírez'),
('170000', 'Pedro Sánchez'),
('182553', 'Sofía Díaz'),
('182560', 'María López'),
('172550', 'Luis Fernández');


--maestro
INSERT INTO maestro (nombre, departamento) VALUES 
('Mtro. Roberto Sánchez', 'Matemáticas'),
('Mtra. Laura Díaz', 'Ciencias'),
('Ing. Javier Morales', 'Ciencias'),
('Mtra. Sofía Ramírez', 'Tecnologías'),
('Mtro. Juan Pérez', 'Tecnologías'),
('Mtra. Carmen Silva', 'Tecnologías'),
('Mtro. Diego Luna', 'Tecnologías'),
('Mtra. Rosa Márquez', 'Tecnologías'),
('Mtro. Andrés Bello', 'Tecnologías'),
('Ing. Paula Mendoza', 'Tecnologías');


--materia
INSERT INTO materia (nombre, creditos) VALUES 
('Álgebra', 4),
('Física I', 5),
('Programación I', 6),
('Base de datos I', 3),
('Taller empresarial', 5),
('Progamacion Web', 6),
('Programacion II', 7),
('Arquitectura de computadoras', 8),
('Sistemas digitales', 9),
('Organizacion computacional', 4);



--grupos
INSERT INTO grupos (seccion, periodo, id_materia, id_maestro) VALUES 
('S38A', '20253S', 1, 1), 
('S38E', '20253S', 2, 2), 
('T41A', '20253S', 3, 3), 
('T41B', '20253S', 4, 4), 
('T42A', '20253S', 5, 5), 
('T42B', '20253S', 6, 6),
('T43A', '20253S', 7, 7), 
('T43B', '20253S', 8, 8), 
('T44A', '20253S', 9, 9), 
('T48A', '20253S', 10, 10);  
  

--inscripcion 
INSERT INTO inscripcion (id_estudiante, id_grupo, periodo, seccion) VALUES 
(1, 1, '20253S', 'S38A'),  
(2, 2, '20253S', 'S38E'),
(3, 3, '20253S', 'T41A'),  
(4, 4, '20253S', 'T41B'), 
(5, 5, '20253S', 'T42A'),  
(6, 6, '20253S', 'T42B'),
(7, 7, '20253S', 'T43A'),  
(8, 8, '20253S', 'T43B'),  
(9, 9, '20253S', 'T44A'),
(10,10, '20253S', 'T48A');  


--asistencia
INSERT INTO asistencia (id_estudiante, id_grupo, seccion, periodo, fecha_hora,asistio) VALUES 
(1, 1,'S38A', '20253S', '2025-09-01 08:00:00', TRUE),
(2, 2,'S38E', '20253S', '2025-09-01 08:00:00', FALSE),
(3, 3,'T41A', '20253S', '2025-09-01 10:00:00', TRUE),
(4, 4,'T41B', '20253S', '2025-09-01 10:00:00', FALSE),
(5, 5,'T42A', '20253S', '2025-09-01 12:00:00', TRUE),
(6, 6,'T42B', '20253S', '2025-09-01 12:00:00', FALSE),
(7, 7,'T43A', '20253S', '2025-09-01 14:00:00', TRUE),
(8, 8,'T43B', '20253S', '2025-09-01 14:00:00', FALSE),
(9, 9,'T44A', '20253S', '2025-09-01 16:00:00', TRUE),
(10,10,'T48A', '20253S', '2025-09-01 16:00:00', FALSE);
    

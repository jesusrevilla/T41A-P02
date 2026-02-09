
   -- Insertar alumnos
INSERT INTO alumnos VALUES
('001', 'Ana Torres'),
('002', 'Luis Gómez'),
('003', 'María López'),
('004', 'Carlos Ruiz'),
('005', 'Laura Méndez'),
('006', 'Pedro Sánchez'),
('007', 'Sofía Díaz'),
('008', 'Jorge Ramírez'),
('009', 'Elena Castro'),
('010', 'Tomás Ortega');

-- Insertar maestros
INSERT INTO maestros(nombre_maestro) VALUES
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

-- Insertar periodos
INSERT INTO periodo(tipo_periodo) VALUES
('Primavera'),
('Verano'),
('Otoño');

-- Insertar materias
INSERT INTO materias(nombre_materia, tipo_materia) VALUES
('Bases de Datos I', 'Teórica'),
('Bases de Datos II', 'Teórica'),
('Diseño de BD', 'Práctica'),
('SQL Avanzado', 'Práctica'),
('PostgreSQL', 'Teórica'),
('Programación Avanzada', 'Práctica'),
('Estructuras de Datos', 'Teórica'),
('Sistemas Operativos', 'Teórica'),
('Redes de Computadoras', 'Teórica'),
('Seguridad Informática', 'Práctica');

-- Insertar grupos
INSERT INTO grupos (grupo_id, nombre_grupo, materia_id, maestro_id, periodo_id) VALUES
('20253S-T41A', 'T41A', 1, 1, 1),
('20253S-T41B', 'T41B', 2, 2, 2),
('20253S-T42A', 'T42A', 3, 3, 3),
('20253S-T42B', 'T42B', 4, 4, 1),
('20253S-T43A', 'T43A', 5, 5, 2),
('20253S-T43B', 'T43B', 6, 6, 3),
('20253S-T44A', 'T44A', 7, 7, 1),
('20253S-T44B', 'T44B', 8, 8, 2),
('20253S-T45A', 'T45A', 9, 9, 3),
('20253S-T45B', 'T45B', 10, 10, 1);

INSERT INTO inscripciones (matricula, grupo_id) VALUES
(1, '20253S-T41A'),
(2, '20253S-T41A'),
(3, '20253S-T41B'),
(4, '20253S-T41B'),
(5, '20253S-T42A'),
(6, '20253S-T42A'),
(7, '20253S-T42B'),
(8, '20253S-T42B'),
(9, '20253S-T43A'),
(10, '20253S-T43A');
    
INSERT INTO asistencia (inscripcion_id, hora_fecha, faltas_acum, retardos) VALUES
(1, '2025-09-01 08:00:00', 0, 0),  
(2, '2025-09-01 08:00:00', 1, 0),  
(3, '2025-09-01 10:00:00', 0, 0),  
(4, '2025-09-01 10:00:00', 1, 0),  
(5, '2025-09-01 12:00:00', 0, 0),  
(6, '2025-09-01 12:00:00', 1, 0),  
(7, '2025-09-01 14:00:00', 0, 0),  
(8, '2025-09-01 14:00:00', 1, 0),  
(9, '2025-09-01 16:00:00', 0, 0),  
(10, '2025-09-01 16:00:00', 1, 0); 
    

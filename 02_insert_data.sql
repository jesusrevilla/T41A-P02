
    -- Insertar alumnos
    INSERT INTO alumnos VALUES
    ('A001', 'Ana Torres'),
    ('A002', 'Luis Gómez'),
    ('A003', 'María López'),
    ('A004', 'Carlos Ruiz'),
    ('A005', 'Laura Méndez'),
    ('A006', 'Pedro Sánchez'),
    ('A007', 'Sofía Díaz'),
    ('A008', 'Jorge Ramírez'),
    ('A009', 'Elena Castro'),
    ('A010', 'Tomás Ortega');
INSERT INTO estudiante VALUES ('174197','Yovana Isabel','Palencia Sáchez'),
('177847','Alfredo','De Alba Sánchez'),
('178948','José Alfredo','Reyes González'),
('175607','Jordy Iván','Rodríguez Torres'),
('175596','Sebastián','Rodríguez Segura'),
('175031','Brian Salvador','Espinoza Aguilar'),
('175817','Christian Andre','Arellano Cruz'),
('181662','Josué','Pineda Aguilar'),
('182078','Josué Emmanuel','López López'),
('178823','Rodolfo','Cavazos Zacarias');

    -- Insertar maestros
    INSERT INTO maestros(nombre) VALUES
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
INSERT INTO profesor VALUES (001,'Jesús Alberto','Revilla Silva'),
(002,'Rubén','Cardenas Sánchez'),
(003,'Paulina del Rosario','Pérez Castillo'),
(004,'Nehemias','Leija Martínez'),
(005,'Jesús Agustín','Aboytes González'),
(006,'Israel','Guerrero Castillo'),
(007,'Genaro','Niño Carrales'),
(008,'Victor Manuel','Fernández Mireles'),
(009,'Francisco Cruz','Ordaz Salazar'),
(010,'Alejandro','Reyes');

    -- Insertar grupos
    INSERT INTO grupos VALUES
    ('20253S', 'T41A', 'Bases de Datos I', 1),
    ('20253S', 'T41B', 'Bases de Datos I', 2),
    ('20253S', 'T42A', 'Bases de Datos II', 3),
    ('20253S', 'T42B', 'Bases de Datos II', 4),
    ('20253S', 'T43A', 'Diseño de BD', 5),
    ('20253S', 'T43B', 'Diseño de BD', 6),
    ('20253S', 'T44A', 'SQL Avanzado', 7),
    ('20253S', 'T44B', 'SQL Avanzado', 8),
    ('20253S', 'T45A', 'PostgreSQL', 9),
    ('20253S', 'T45B', 'PostgreSQL', 10);
INSERT INTO curso VALUES ('Base de datos','T41A',001),
('Interacción','S38A',002),
('Núcleo V','S38E',003),
('Matemáticas III','S38A',004),
('Sistemas digitales','T48A',005),
('Organización','S38E',006),
('PIC I','T48A',007),
('Sistemas operativos','S38A',008),
('Teoría Computacional','S38E',009),
('Algoritmos','T48A',010);

    -- Inscripciones
    INSERT INTO inscripciones VALUES
    ('A001', '20253S', 'T41A', '2025-08-01'),
    ('A002', '20253S', 'T41A', '2025-08-01'),
    ('A003', '20253S', 'T41B', '2025-08-01'),
    ('A004', '20253S', 'T41B', '2025-08-01'),
    ('A005', '20253S', 'T42A', '2025-08-01'),
    ('A006', '20253S', 'T42A', '2025-08-01'),
    ('A007', '20253S', 'T42B', '2025-08-01'),
    ('A008', '20253S', 'T42B', '2025-08-01'),
    ('A009', '20253S', 'T43A', '2025-08-01'),
    ('A010', '20253S', 'T43A', '2025-08-01');
INSERT INTO inscripcion VALUES ('175031', 'Organización', 'S38E'),
('175817', 'PIC I', 'T48A'),
('181662', 'Sistemas operativos', 'S38A'),
('182078', 'Teoría Computacional', 'S38E'),
('178823', 'Algoritmos', 'T48A'),
('174197', 'Organización', 'S38E'),
('177847', 'PIC I', 'T48A'),
('178948', 'Sistemas operativos', 'S38A'),
('175607', 'Teoría Computacional', 'S38E'),
('175596', 'Algoritmos', 'T48A');

    -- Asistencia (algunos ausentes)
    INSERT INTO asistencia VALUES
    ('A001', '20253S', 'T41A', '2025-09-01 08:00:00', TRUE),
    ('A002', '20253S', 'T41A', '2025-09-01 08:00:00', FALSE),
    ('A003', '20253S', 'T41B', '2025-09-01 10:00:00', TRUE),
    ('A004', '20253S', 'T41B', '2025-09-01 10:00:00', FALSE),
    ('A005', '20253S', 'T42A', '2025-09-01 12:00:00', TRUE),
    ('A006', '20253S', 'T42A', '2025-09-01 12:00:00', FALSE),
    ('A007', '20253S', 'T42B', '2025-09-01 14:00:00', TRUE),
    ('A008', '20253S', 'T42B', '2025-09-01 14:00:00', FALSE),
    ('A009', '20253S', 'T43A', '2025-09-01 16:00:00', TRUE),
    ('A010', '20253S', 'T43A', '2025-09-01 16:00:00', FALSE);
INSERT INTO asistencia VALUES
('174197', 'Base de datos', 'T41A', '2025-09-11 08:00:00', TRUE),
('177847', 'Interacción', 'S38A', '2025-09-11 09:00:00', TRUE),
('178948', 'Núcleo V', 'S38E', '2025-09-11 10:00:00', FALSE),
('175607', 'Matemáticas III', 'S38A', '2025-09-11 11:00:00', TRUE),
('175596', 'Sistemas digitales', 'T48A', '2025-09-11 12:00:00', TRUE),
('175031', 'Organización', 'S38E', '2025-09-11 13:00:00', TRUE),
('175817', 'PIC I', 'T48A', '2025-09-11 14:00:00', FALSE),
('181662', 'Sistemas operativos', 'S38A', '2025-09-11 15:00:00', TRUE),
('182078', 'Teoría Computacional', 'S38E', '2025-09-11 16:00:00', TRUE),
('178823', 'Algoritmos', 'T48A', '2025-09-11 17:00:00', FALSE);
    


    -- Insertar alumnos
    INSERT INTO alumnos VALUES
    ('182263', 'Ana Torres'),
    ('182356', 'Luis Gómez'),
    ('183355', 'María López'),
    ('185655', 'Carlos Ruiz'),
    ('186575', 'Laura Méndez'),
    ('185665', 'Pedro Sánchez'),
    ('186895', 'Sofía Díaz'),
    ('189875', 'Jorge Ramírez'),
    ('189775', 'Elena Castro'),
    ('189878', 'Tomás Ortega');

    -- Insertar maestros
    INSERT INTO profesores(nombre) VALUES
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

    -- Inscripciones
    INSERT INTO inscripciones VALUES
    ('182263', '20253S', 'T41A', '2025-08-01'),
    ('182356', '20253S', 'T41A', '2025-08-01'),
    ('183355', '20253S', 'T41B', '2025-08-01'),
    ('A004', '20253S', 'T41B', '2025-08-01'),
    ('A005', '20253S', 'T42A', '2025-08-01'),
    ('A006', '20253S', 'T42A', '2025-08-01'),
    ('A007', '20253S', 'T42B', '2025-08-01'),
    ('A008', '20253S', 'T42B', '2025-08-01'),
    ('A009', '20253S', 'T43A', '2025-08-01'),
    ('A010', '20253S', 'T43A', '2025-08-01');

    -- Asistencia (algunos ausentes)
    INSERT INTO asistencia VALUES
    ('182263', '20253S', 'T41A', '2025-09-01 08:00:00', TRUE),
    ('182356', '20253S', 'T41A', '2025-09-01 08:00:00', FALSE),
    ('183355', '20253S', 'T41B', '2025-09-01 10:00:00', TRUE),
    ('A004', '20253S', 'T41B', '2025-09-01 10:00:00', FALSE),
    ('A005', '20253S', 'T42A', '2025-09-01 12:00:00', TRUE),
    ('A006', '20253S', 'T42A', '2025-09-01 12:00:00', FALSE),
    ('A007', '20253S', 'T42B', '2025-09-01 14:00:00', TRUE),
    ('A008', '20253S', 'T42B', '2025-09-01 14:00:00', FALSE),
    ('A009', '20253S', 'T43A', '2025-09-01 16:00:00', TRUE),
    ('A010', '20253S', 'T43A', '2025-09-01 16:00:00', FALSE);
    

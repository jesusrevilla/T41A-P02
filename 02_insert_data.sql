
    -- Insertar alumno
    INSERT INTO alumno VALUES
    ('A001', 'Ana Torres', 'ejemplo@gmail.com'),
    ('A002', 'Luis Gómez', 'ejemplo@gmail.com'),
    ('A003', 'María López', 'ejemplo@gmail.com'),
    ('A004', 'Carlos Ruiz', 'ejemplo@gmail.com'),
    ('A005', 'Laura Méndez', 'ejemplo@gmail.com'),
    ('A006', 'Pedro Sánchez', 'ejemplo@gmail.com'),
    ('A007', 'Sofía Díaz', 'ejemplo@gmail.com'),
    ('A008', 'Jorge Ramírez', 'ejemplo@gmail.com'),
    ('A009', 'Elena Castro', 'ejemplo@gmail.com'),
    ('A010', 'Tomás Ortega', 'ejemplo@gmail.com');

    -- Insertar profesor
    INSERT INTO profesor(nombre, correo) VALUES
    ('Mtro. Juan Pérez', 'ejemplo@gmail.com'),
    ('Mtra. Carmen Silva', 'ejemplo@gmail.com'),
    ('Mtro. Diego Luna', 'ejemplo@gmail.com'),
    ('Mtra. Rosa Márquez', 'ejemplo@gmail.com'),
    ('Mtro. Andrés Bello', 'ejemplo@gmail.com'),
    ('Mtra. Julia Ríos', 'ejemplo@gmail.com'),
    ('Mtro. Sergio Peña', 'ejemplo@gmail.com'),
    ('Mtra. Alicia Torres', 'ejemplo@gmail.com'),
    ('Mtro. Iván Cordero', 'ejemplo@gmail.com'),
    ('Mtra. Teresa León', 'ejemplo@gmail.com');

    -- Insertar curso 
    INSERT INTO curso(periodo, clave, nombre, id_profesor) VALUES
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

 -- inscripcion
   INSERT INTO inscripcion VALUES
('A001', '20253S', 1, '2025-08-01'),
('A002', '20253S', 1, '2025-08-01'),
('A003', '20253S', 2, '2025-08-01'),
('A004', '20253S', 2, '2025-08-01'),
('A005', '20253S', 3, '2025-08-01'),
('A006', '20253S', 3, '2025-08-01'),
('A007', '20253S', 4, '2025-08-01'),
('A008', '20253S', 4, '2025-08-01'),
('A009', '20253S', 5, '2025-08-01'),
('A010', '20253S', 5, '2025-08-01');

INSERT INTO asistencia VALUES
('A001', '20253S', 1, '2025-09-01 08:00:00', TRUE),
('A002', '20253S', 1, '2025-09-01 08:00:00', FALSE),
('A003', '20253S', 2, '2025-09-01 10:00:00', TRUE),
('A004', '20253S', 2, '2025-09-01 10:00:00', FALSE),
('A005', '20253S', 3, '2025-09-01 12:00:00', TRUE),
('A006', '20253S', 3, '2025-09-01 12:00:00', FALSE),
('A007', '20253S', 4, '2025-09-01 14:00:00', TRUE),
('A008', '20253S', 4, '2025-09-01 14:00:00', FALSE),
('A009', '20253S', 5, '2025-09-01 16:00:00', TRUE),
('A010', '20253S', 5, '2025-09-01 16:00:00', FALSE);

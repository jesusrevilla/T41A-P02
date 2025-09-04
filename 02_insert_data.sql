
    -- Insertar alumnos
    INSERT INTO Estudiante VALUES
    ('1', 'Ana', 'Torres'),
    ('2', 'Luis', 'Gómez'),
    ('3', 'María', 'López'),
    ('4', 'Carlos', 'Ruiz'),
    ('5', 'Laura', 'Méndez'),
    ('6', 'Pedro', 'Sánchez'),
    ('7', 'Sofía', 'Díaz'),
    ('8', 'Jorge', 'Ramírez'),
    ('9', 'Elena', 'Castro'),
    ('10', 'Tomás', 'Ortega');
    
    INSERT INTO Maestros VALUES
    ('1', 'Mtro. Juan', 'Pérez', 'matematicas'),
    ('2', 'Mtra. Carmen', 'Silva', 'español'),
    ('3', 'Mtro. Diego', 'Luna', 'historia'),
    ('4', 'Mtra. Rosa', 'Márquez', 'quimica'),
    ('5', 'Mtro. Andrés', 'Bello', 'fisica'),
    ('6', 'Mtra. Julia', 'Ríos', 'artes'),
    ('7', 'Mtro. Sergio', 'Peña', 'computacion'),
    ('8', 'Mtra. Alicia', 'Torres', 'deportes'),
    ('9', 'Mtro. Iván', 'Cordero', 'etica'),
    ('10', 'Mtra. Teresa', 'León', 'ciencias');
    
     INSERT INTO Grupo VALUES
    ('T41A', '20253S', '1', 'Bases de Datos I'),
    ('T41B', '20253S', '2', 'Bases de Datos I'),
    ('T42A', '20253S', '3', 'Bases de Datos II'),
    ('T42B', '20253S', '4', 'Bases de Datos II'),
    ('T43A', '20253S', '5', 'Diseño de BD'),
    ('T43B', '20253S', '6', 'Diseño de BD'),
    ('T44A', '20253S', '7', 'SQL Avanzado'),
    ('T44B', '20253S', '8', 'SQL Avanzado'),
    ('T45A', '20253S', '9', 'PostgreSQL'),
    ('T45B', '20253S', '10', 'PostgreSQL');
    
    INSERT INTO Inscripcion VALUES
    ('1', 'T41A', '20253S', '2025-08-01'),
    ('2', 'T41A', '20253S', '2025-08-01'),
    ('3', 'T41A', '20253S', '2025-08-01'),
    ('4', 'T41A', '20253S', '2025-08-01'),
    ('5', 'T41A', '20253S', '2025-08-01'),
    ('6', 'T41A', '20253S', '2025-08-01'),
    ('7', 'T41A', '20253S', '2025-08-01'),
    ('8', 'T41A', '20253S', '2025-08-01'),
    ('9', 'T41A', '20253S', '2025-08-01'),
    ('10', 'T41A', '20253S', '2025-08-01');
    
    INSERT INTO Asistencia VALUES
    ('1','T41A',  '20253S', '2025-09-01 08:00:00', TRUE),
    ('2', 'T41A','20253S', '2025-09-01 08:00:00', FALSE),
    ('3', 'T41B',  '20253S', '2025-09-01 10:00:00', TRUE),
    ('4', 'T41B', '20253S', '2025-09-01 10:00:00', FALSE),
    ('5', 'T41B', '20253S', '2025-09-01 12:00:00', TRUE),
    ('6', 'T41B', '20253S', '2025-09-01 12:00:00', FALSE),
    ('7', 'T41B', '20253S', '2025-09-01 14:00:00', TRUE),
    ('8', 'T41B', '20253S', '2025-09-01 14:00:00', FALSE),
    ('9', 'T41B', '20253S', '2025-09-01 16:00:00', TRUE),
    ('10', 'T41B', '20253S', '2025-09-01 16:00:00', FALSE);
    

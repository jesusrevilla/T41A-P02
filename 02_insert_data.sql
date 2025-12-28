    -- Insertar alumnos
    INSERT INTO alumno VALUES
    ('Ana', 'Torres','ITI',001),
    ('Luis', 'Gómez','ITEM',002),
    ( 'María', 'López','ITI',003),
    ( 'Carlos', 'Ruiz','LAG',004),
    ('Laura', 'Méndez','ITI',005),
    ('Pedro', 'Sánchez','ITEM',006),
    ('Sofía', 'Díaz','LAG',007),
    ('Jorge', 'Ramírez','ITI',008),
    ('Elena', 'Castro','ITEM',009),
    ('Tomás', 'Ortega','LAG',010);

    -- Insertar maestros
    INSERT INTO profesor VALUES
    ('Mtro. Juan', 'Pérez','Programación', 'A001'),
    ('Mtra. Carmen', 'Silva','Programación', 'A002'),
    ('Mtro. Diego', 'Luna','Programación', 'A003'),
    ('Mtra. Rosa', 'Márquez','Programación', 'A004'),
    ('Mtro. Andrés', 'Bello','Programación', 'A005'),
    ('Mtra. Julia', 'Ríos','Programación', 'A006'),
    ('Mtro. Sergio', 'Peña','Programación', 'A007'),
    ('Mtra. Alicia', 'Torres','Programación', 'A008'),
    ('Mtro. Iván', 'Cordero','Programación', 'A009'),
    ('Mtra. Teresa', 'León','Programación', 'A010');

   -- Insertar grupos
    INSERT INTO grupo VALUES
    ('S38A', 'Bases de Datos I','18:00-19:00','20253S', 'A001'),
    ( 'S38E', 'Bases de Datos I','15:00-16:00','20253S', 'A002'),
    ('T41A', 'Bases de Datos II','18:00-19:00','20253S', 'A003'),
    ('T48B', 'Bases de Datos II','20:00-21:00','20253S', 'A004'),
    ('T43A', 'Diseño de BD','12:00-13:00','20253S', 'A005'),
    ('T43B', 'Diseño de BD','14:00-15:00','20253S', 'A006'),
    ('T44A', 'SQL Avanzado','16:00-17:00','20253S', 'A007'),
    ('T44B', 'SQL Avanzado','18:00-19:00','20253S', 'A008'),
    ('T45A', 'PostgreSQL','17:00-18:00','20253S', 'A009'),
    ('T45B', 'PostgreSQL','19:00-20:00','20253S', 'A010');


    -- Inscripciones
    INSERT INTO inscripcion (id_alumno, clave_materia) VALUES
    (001, 'T45B'),
    (002,'T45B'),
    (003, 'S38E'),
    (004, 'S38E'),
    (005, 'T41A'),
    (006, 'T41A'),
    (007, 'T48B'),
    (008,  'T48B'),
    (009, 'T43A'),
    (010, 'T43A');
    
        -- Asistencia (algunos ausentes)
    INSERT INTO asistencia (id_alumno, clave_materia, asistencia, presente)VALUES
    (001, 'S38A', '2025-09-01 08:00:00', TRUE),
    (002, 'S38A', '2025-09-01 08:00:00', FALSE),
    (003, 'T41A', '2025-09-01 10:00:00', TRUE),
    (004, 'T41A', '2025-09-01 10:00:00', FALSE),
    (005, 'T48B', '2025-09-01 12:00:00', TRUE),
    (006, 'T48B', '2025-09-01 12:00:00', FALSE),
    (007, 'T43A', '2025-09-01 14:00:00', TRUE),
    (008, 'T43A', '2025-09-01 14:00:00', FALSE),
    (009, 'T45A', '2025-09-01 16:00:00', TRUE),
    (010, 'T45A', '2025-09-01 16:00:00', FALSE);

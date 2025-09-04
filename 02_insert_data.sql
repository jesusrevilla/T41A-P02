INSERT INTO Alumnos (matricula, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, email) VALUES
('A001', 'Ana', 'Torres', 'Pérez', '2000-01-15', 'ana.torres@ejemplo.com'),
('A002', 'Luis', 'Gómez', 'Díaz', '2001-03-20', 'luis.gomez@ejemplo.com'),
('A003', 'María', 'López', 'Ruiz', '2000-07-22', 'maria.lopez@ejemplo.com'),
('A004', 'Carlos', 'Ruiz', 'Sánchez', '2002-05-10', 'carlos.ruiz@ejemplo.com'),
('A005', 'Laura', 'Méndez', 'Pérez', '2001-09-08', 'laura.mendez@ejemplo.com'),
('A006', 'Pedro', 'Sánchez', 'García', '2002-11-25', 'pedro.sanchez@ejemplo.com'),
('A007', 'Sofía', 'Díaz', 'Martínez', '2000-02-18', 'sofia.diaz@ejemplo.com'),
('A008', 'Jorge', 'Ramírez', 'Flores', '2001-04-30', 'jorge.ramirez@ejemplo.com'),
('A009', 'Elena', 'Castro', 'Hernández', '2002-06-12', 'elena.castro@ejemplo.com'),
('A010', 'Tomás', 'Ortega', 'Vargas', '2000-08-05', 'tomas.ortega@ejemplo.com');

-- Tabla Profesores
INSERT INTO Profesores (nombre, apellido_paterno, apellido_materno, email) VALUES
('Juan', 'Pérez', 'Soto', 'juan.perez@maestro.com'),
('Carmen', 'Silva', 'Gómez', 'carmen.silva@maestro.com'),
('Diego', 'Luna', 'Vargas', 'diego.luna@maestro.com'),
('Rosa', 'Márquez', 'Méndez', 'rosa.marquez@maestro.com'),
('Andrés', 'Bello', 'Ríos', 'andres.bello@maestro.com'),
('Julia', 'Ríos', 'Castro', 'julia.rios@maestro.com'),
('Sergio', 'Peña', 'López', 'sergio.pena@maestro.com'),
('Alicia', 'Torres', 'García', 'alicia.torres@maestro.com'),
('Iván', 'Cordero', 'Ruiz', 'ivan.cordero@maestro.com'),
('Teresa', 'León', 'Díaz', 'teresa.leon@maestro.com');

-- Tabla Materias
INSERT INTO Materias (nombre_materia, descripcion) VALUES
('Bases de Datos I', 'Introducción a la gestión y diseño de bases de datos.'),
('Bases de Datos II', 'Continuación del curso I, con temas avanzados.'),
('Diseño de BD', 'Curso especializado en el diseño de modelos de bases de datos.'),
('SQL Avanzado', 'Profundización en el lenguaje de consulta SQL.'),
('PostgreSQL', 'Manejo y administración del sistema de bases de datos PostgreSQL.');

-- Tabla Periodos
INSERT INTO Periodos (nombre_periodo, fecha_inicio, fecha_fin) VALUES
('2025-Otoño', '2025-08-01', '2025-12-15');

-- Tabla Grupos
INSERT INTO Grupos (codigo_grupo, id_materia, id_profesor, id_periodo) VALUES
('T41A', (SELECT id_materia FROM Materias WHERE nombre_materia = 'Bases de Datos I'), (SELECT id_profesor FROM Profesores WHERE nombre = 'Juan' AND apellido_paterno = 'Pérez'), (SELECT id_periodo FROM Periodos WHERE nombre_periodo = '2025-Otoño')),
('T41B', (SELECT id_materia FROM Materias WHERE nombre_materia = 'Bases de Datos I'), (SELECT id_profesor FROM Profesores WHERE nombre = 'Carmen' AND apellido_paterno = 'Silva'), (SELECT id_periodo FROM Periodos WHERE nombre_periodo = '2025-Otoño')),
('T42A', (SELECT id_materia FROM Materias WHERE nombre_materia = 'Bases de Datos II'), (SELECT id_profesor FROM Profesores WHERE nombre = 'Diego' AND apellido_paterno = 'Luna'), (SELECT id_periodo FROM Periodos WHERE nombre_periodo = '2025-Otoño')),
('T42B', (SELECT id_materia FROM Materias WHERE nombre_materia = 'Bases de Datos II'), (SELECT id_profesor FROM Profesores WHERE nombre = 'Rosa' AND apellido_paterno = 'Márquez'), (SELECT id_periodo FROM Periodos WHERE nombre_periodo = '2025-Otoño')),
('T43A', (SELECT id_materia FROM Materias WHERE nombre_materia = 'Diseño de BD'), (SELECT id_profesor FROM Profesores WHERE nombre = 'Andrés' AND apellido_paterno = 'Bello'), (SELECT id_periodo FROM Periodos WHERE nombre_periodo = '2025-Otoño'));

-- Tabla Inscripciones
INSERT INTO Inscripciones (id_alumno, id_grupo, fecha_inscripcion) VALUES
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A001'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41A'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A002'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41A'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A003'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41B'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A004'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41B'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A005'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42A'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A006'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42A'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A007'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42B'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A008'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42B'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A009'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T43A'), '2025-08-01 08:00:00'),
((SELECT id_alumno FROM Alumnos WHERE matricula = 'A010'), (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T43A'), '2025-08-01 08:00:00');

-- Tabla Asistencias
INSERT INTO Asistencias (id_inscripcion, fecha_hora, estado_asistencia) VALUES
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A001') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41A')), '2025-09-01 08:00:00', 'Presente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A002') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41A')), '2025-09-01 08:00:00', 'Ausente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A003') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41B')), '2025-09-01 10:00:00', 'Presente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A004') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T41B')), '2025-09-01 10:00:00', 'Ausente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A005') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42A')), '2025-09-01 12:00:00', 'Presente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A006') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42A')), '2025-09-01 12:00:00', 'Ausente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A007') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42B')), '2025-09-01 14:00:00', 'Presente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A008') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T42B')), '2025-09-01 14:00:00', 'Ausente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A009') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T43A')), '2025-09-01 16:00:00', 'Presente'),
((SELECT id_inscripcion FROM Inscripciones WHERE id_alumno = (SELECT id_alumno FROM Alumnos WHERE matricula = 'A010') AND id_grupo = (SELECT id_grupo FROM Grupos WHERE codigo_grupo = 'T43A')), '2025-09-01 16:00:00', 'Ausente');

-- Tabla maestros
CREATE TABLE maestros (
    id_maestro INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla alumnos
CREATE TABLE alumnos (
    matricula INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla grupos
CREATE TABLE grupos (
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    id_maestro INT NOT NULL,
    PRIMARY KEY (periodo, seccion),
    CONSTRAINT fk_grupo_maestro FOREIGN KEY (id_maestro)
        REFERENCES maestros(id_maestro)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Tabla inscripciones
CREATE TABLE inscripciones (
    matricula INT NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    PRIMARY KEY (matricula, periodo, seccion),
    CONSTRAINT fk_inscripcion_alumno FOREIGN KEY (matricula)
        REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_inscripcion_grupo FOREIGN KEY (periodo, seccion)
        REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla asistencia
CREATE TABLE asistencia (
    matricula INT NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_asistencia DATE NOT NULL,
    PRIMARY KEY (matricula, periodo, seccion, fecha_asistencia),
    CONSTRAINT fk_asistencia_alumno FOREIGN KEY (matricula)
        REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_asistencia_grupo FOREIGN KEY (periodo, seccion)
        REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- Insertar maestros
INSERT INTO maestros (id_maestro, nombre) VALUES
(1, 'Maestro A'), (2, 'Maestro B'), (3, 'Maestro C'), (4, 'Maestro D'), (5, 'Maestro E'),
(6, 'Maestro F'), (7, 'Maestro G'), (8, 'Maestro H'), (9, 'Maestro I'), (10, 'Maestro J');

-- Insertar alumnos
INSERT INTO alumnos (matricula, nombre) VALUES
(101, 'Alumno 1'), (102, 'Alumno 2'), (103, 'Alumno 3'), (104, 'Alumno 4'), (105, 'Alumno 5'),
(106, 'Alumno 6'), (107, 'Alumno 7'), (108, 'Alumno 8'), (109, 'Alumno 9'), (110, 'Alumno 10');

-- Insertar grupos
INSERT INTO grupos (periodo, seccion, id_maestro) VALUES
('2025A', 'A1', 1), ('2025A', 'A2', 2), ('2025A', 'A3', 3), ('2025A', 'A4', 4), ('2025A', 'A5', 5),
('2025A', 'A6', 6), ('2025A', 'A7', 7), ('2025A', 'A8', 8), ('2025A', 'A9', 9), ('2025A', 'A10', 10);

-- Insertar inscripciones
INSERT INTO inscripciones (matricula, periodo, seccion) VALUES
(101, '2025A', 'A1'), (102, '2025A', 'A2'), (103, '2025A', 'A3'), (104, '2025A', 'A4'), (105, '2025A', 'A5'),
(106, '2025A', 'A6'), (107, '2025A', 'A7'), (108, '2025A', 'A8'), (109, '2025A', 'A9'), (110, '2025A', 'A10');

-- Insertar asistencia
INSERT INTO asistencia (matricula, periodo, seccion, fecha_asistencia) VALUES
(101, '2025A', 'A1', '2025-09-01'), (102, '2025A', 'A2', '2025-09-01'), (103, '2025A', 'A3', '2025-09-01'),
(104, '2025A', 'A4', '2025-09-01'), (105, '2025A', 'A5', '2025-09-01'), (106, '2025A', 'A6', '2025-09-01'),
(107, '2025A', 'A7', '2025-09-01'), (108, '2025A', 'A8', '2025-09-01'), (109, '2025A', 'A9', '2025-09-01'),
(110, '2025A', 'A10', '2025-09-01');

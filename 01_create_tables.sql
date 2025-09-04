-- Tabla maestro
CREATE TABLE maestro (
    id_maestro INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla alumno
CREATE TABLE alumnos (
    matricula INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla grupo
CREATE TABLE grupos (
    periodo VARCHAR(10),
    seccion VARCHAR(10),
    id_maestro INT,
    PRIMARY KEY (periodo, seccion),
    CONSTRAINT fk_maestro FOREIGN KEY (id_maestro) REFERENCES maestro(id_maestro)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Tabla inscripciones
CREATE TABLE inscripciones (
    matricula INT,
    periodo VARCHAR(10),
    seccion VARCHAR(10),
    PRIMARY KEY (matricula, periodo, seccion),
    CONSTRAINT fk_inscripcion_alumno FOREIGN KEY (matricula) REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_inscripcion_grupo FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla asistencia
CREATE TABLE asistencia (
    matricula INT,
    periodo VARCHAR(10),
    seccion VARCHAR(10),
    fecha_asistencia DATE,
    PRIMARY KEY (matricula, periodo, seccion, fecha_asistencia),
    CONSTRAINT fk_asistencia_alumno FOREIGN KEY (matricula) REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_asistencia_grupo FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

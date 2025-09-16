CREATE TABLE alumnos (
    matricula VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE maestros (
    id_maestro SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE grupos (
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    nombre_grupo VARCHAR(50) NOT NULL,
    id_maestro INTEGER NOT NULL,
    clave_grupo VARCHAR(10),       -- mi campo extra
    id_materia INT,                -- mi campo extra
    PRIMARY KEY (periodo, seccion),
    FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestro)
);

CREATE TABLE inscripciones (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion)
);

CREATE TABLE asistencia (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    presente BOOLEAN NOT NULL,
    id_grupo INT,                  -- otro campo extra xd
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion, fecha_hora)
);

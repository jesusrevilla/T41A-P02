--Angel Castillo Silva 179752
CREATE TABLE alumno (
    matricula VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE profesor (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE grupo (
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    nombre_grupo VARCHAR(50) NOT NULL,
    id_profesor INTEGER NOT NULL,
    PRIMARY KEY (periodo, seccion),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
);

CREATE TABLE inscripciones (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumno(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupo(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion)
);

CREATE TABLE asistencia (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumno(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupo(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion, fecha_hora)
);

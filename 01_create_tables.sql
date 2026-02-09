CREATE TABLE alumnos (
    matricula CHAR(6) PRIMARY KEY,
    nombre VARCHAR NOT NULL
);

CREATE TABLE profesores (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL
);

CREATE TABLE grupo (
    id_grupo SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL,
    periodo CHAR(4) NOT NULL,
    clave CHAR(4) NOT NULL,
    horario TIMESTAMP NOT NULL,
    id_profesor INT NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    matricula CHAR(6) NOT NULL,
    id_grupo INT NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE asistencia (
    id_asistencia SERIAL PRIMARY KEY,
    matricula CHAR(6) NOT NULL,
    id_grupo INT NOT NULL,
    fecha TIMESTAMP NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


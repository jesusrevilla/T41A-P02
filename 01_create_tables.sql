CREATE TABLE alumno (
    matricula VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL
);

CREATE TABLE profesor (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL
);

CREATE TABLE curso (
    id_curso SERIAL PRIMARY KEY,
    periodo VARCHAR(10) NOT NULL,
    clave VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    id_profesor INTEGER NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
        ON DELETE RESTRICT
);

CREATE TABLE inscripcion (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    id_curso INTEGER NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumno(matricula)
        ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
        ON DELETE CASCADE,
    PRIMARY KEY (matricula, id_curso, periodo)
);

CREATE TABLE asistencia (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    id_curso INTEGER NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (matricula) REFERENCES alumno(matricula)
        ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
        ON DELETE CASCADE,
    PRIMARY KEY (matricula, id_curso, fecha_hora)
);

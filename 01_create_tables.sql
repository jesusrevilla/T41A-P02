CREATE TABLE alumno(
    alumno_id SERIAL PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL
);

CREATE TABLE curso(
    curso_id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL
);

CREATE TABLE maestro(
    maestro_id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL
);

CREATE TABLE grupo(
    grupo_id SERIAL PRIMARY KEY,                      
    curso_id INTEGER,
    maestro_id INTEGER,
    FOREIGN KEY (curso_id) REFERENCES curso(curso_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (maestro_id) REFERENCES maestro(maestro_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    UNIQUE (seccion)                         
);

CREATE TABLE inscripcion(
    inscripcion_id SERIAL PRIMARY KEY,
    alumno_id INTEGER,
    grupo_id INTEGER,
    FOREIGN KEY (alumno_id) REFERENCES alumno(alumno_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (grupo_id) REFERENCES grupo(grupo_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    fecha_inscripcion TIMESTAMP NOT NULL
);

CREATE TABLE asistencia(
    asistencia_id SERIAL PRIMARY KEY,
    alumno_id INTEGER,
    grupo_id INTEGER,
    FOREIGN KEY (alumno_id) REFERENCES alumno(alumno_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (grupo_id) REFERENCES grupo(grupo_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    fecha TIMESTAMP NOT NULL,
    presente BOOLEAN NOT NULL
);

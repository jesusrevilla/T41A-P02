-- ==============================================
-- CREACION DE TABLAS
-- ==============================================
CREATE TABLE grupos (
    id_grupo SERIAL PRIMARY KEY,
    codigo VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE maestros (
    id_maestro SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INTEGER NOT NULL,
    anio INT NOT NULL,
    id_maestro INTEGER,
    FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestro)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE alumnos (
    id_alumno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    matricula INT UNIQUE NOT NULL,
    correo VARCHAR(100) NOT NULL,
    semestre INT NOT NULL,
    id_grupo INTEGER,
    FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    id_alumno INTEGER NOT NULL,
    id_curso INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE asistencia (
    id_asistencia SERIAL PRIMARY KEY,
    id_inscripcion INTEGER NOT NULL,
    fecha DATE NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (id_inscripcion) REFERENCES inscripciones(id_inscripcion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

    


CREATE TABLE alumno(
    matricula INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    semestre VARCHAR(50)
);


CREATE TABLE maestro(
    IDmaestro SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);


CREATE TABLE materia(
    id_materia SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);


CREATE TABLE grupo(
    id_grupo SERIAL PRIMARY KEY,
    grupo VARCHAR(50) UNIQUE
);


CREATE TABLE materia_grupo(
    id SERIAL PRIMARY KEY,
    id_materia INT,
    grupo VARCHAR(50),
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia),
    FOREIGN KEY (grupo) REFERENCES grupo(grupo)
);


CREATE TABLE maestro_materia(
    id SERIAL PRIMARY KEY,
    id_maestro INT,
    id_materia INT,
    grupo VARCHAR(20),
    FOREIGN KEY (id_maestro) REFERENCES maestro(IDmaestro),
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia),
    FOREIGN KEY (grupo) REFERENCES grupo(grupo)
);


CREATE TABLE alumno_materia(
    id SERIAL PRIMARY KEY,
    matricula BIGINT,
    ID_materia INT,
    grupo VARCHAR(20),
    FOREIGN KEY (matricula) REFERENCES alumno(matricula),
    FOREIGN KEY (ID_materia) REFERENCES materia(id_materia),
    FOREIGN KEY (grupo) REFERENCES grupo(grupo),
    UNIQUE (matricula, ID_materia) 
);


CREATE TABLE inscripcion(
    id SERIAL PRIMARY KEY,
    matricula INT,
    fecha DATE,
    FOREIGN KEY (matricula) REFERENCES alumno(matricula)
);


CREATE TABLE asistencia(
    id SERIAL PRIMARY KEY,
    fecha DATE,
    id_materia INT,
    id_alumno INT,
    asistencia BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia),
    FOREIGN KEY (id_alumno) REFERENCES alumno(matricula)
);

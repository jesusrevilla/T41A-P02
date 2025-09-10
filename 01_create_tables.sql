CREATE TABLE alumno(
  id_alumno SERIAL PRIMARY KEY,
  matricula INT UNIQUE NOT NULL,
  nombre_alumno VARCHAR(100) NOT NULL
);

    CREATE TABLE alumnos (
        matricula VARCHAR(20) PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL
    );
-- Tabla Grupo
CREATE TABLE grupo(
  id_grupo SERIAL PRIMARY KEY,
  nombre_grupo VARCHAR(50) NOT NULL
);

    CREATE TABLE maestros (
        id_maestro SERIAL PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL
    );
-- Tabla Maestro
CREATE TABLE maestro(
  id_maestro SERIAL PRIMARY KEY,
  nombre_maestro VARCHAR(100) NOT NULL
);

    CREATE TABLE grupos (
        periodo VARCHAR(10) NOT NULL,
        seccion VARCHAR(10) NOT NULL,
        nombre_grupo VARCHAR(50) NOT NULL,
        id_maestro INTEGER NOT NULL,
        PRIMARY KEY (periodo, seccion),
        FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestro)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
    );
-- Tabla Materia
CREATE TABLE materia(
  id_materia SERIAL PRIMARY KEY,
  nombre_materia VARCHAR(100) NOT NULL,
  id_maestro INT REFERENCES maestro(id_maestro),
  id_grupo INT REFERENCES grupo(id_grupo)
);

    CREATE TABLE inscripciones (
        matricula VARCHAR(20) NOT NULL,
        periodo VARCHAR(10) NOT NULL,
        seccion VARCHAR(10) NOT NULL,
        fecha_inscripcion DATE NOT NULL,
        FOREIGN KEY (matricula) REFERENCES alumnos(matricula)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        PRIMARY KEY (matricula, periodo, seccion)
    );
-- Tabla Inscripción (relaciona alumno con grupo y periodo)
CREATE TABLE inscripcion(
  id_inscripcion SERIAL PRIMARY KEY,
  id_alumno INT REFERENCES alumno(id_alumno),
  id_grupo INT REFERENCES grupo(id_grupo),
  periodo VARCHAR(10) NOT NULL
);

    CREATE TABLE asistencia (
        matricula VARCHAR(20) NOT NULL,
        periodo VARCHAR(10) NOT NULL,
        seccion VARCHAR(10) NOT NULL,
        fecha_hora TIMESTAMP NOT NULL,
        presente BOOLEAN NOT NULL,
        FOREIGN KEY (matricula) REFERENCES alumnos(matricula)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        PRIMARY KEY (matricula, periodo, seccion, fecha_hora)
    );

-- Tabla Asistencia (cada registro es la asistencia de un alumno en una clase específica)
CREATE TABLE asistencia(
  id_asistencia SERIAL PRIMARY KEY,
  id_inscripcion INT REFERENCES inscripcion(id_inscripcion),
  id_materia INT REFERENCES materia(id_materia),
  fecha_asistencia DATE NOT NULL,
  estado_asistencia VARCHAR(20) CHECK (estado_asistencia IN ('Asistio', 'Falto', 'Retardo'))
);

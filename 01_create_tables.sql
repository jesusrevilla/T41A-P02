
CREATE TABLE alumnos (
  id        INTEGER PRIMARY KEY,
  nombre    TEXT NOT NULL
);

CREATE TABLE materias (
  id        INTEGER PRIMARY KEY,
  nombre    TEXT NOT NULL
);

CREATE TABLE grupos (
  id          INTEGER PRIMARY KEY,
  materia_id  INTEGER NOT NULL,
  nombre      TEXT NOT NULL,
  FOREIGN KEY (materia_id) REFERENCES materias(id)
);

CREATE TABLE inscripciones (
  id         INTEGER PRIMARY KEY,
  alumno_id  INTEGER NOT NULL,
  grupo_id   INTEGER NOT NULL,
  UNIQUE (alumno_id, grupo_id),
  FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
  FOREIGN KEY (grupo_id)  REFERENCES grupos(id)
);

CREATE TABLE calendario (
  id         INTEGER PRIMARY KEY,
  grupo_id   INTEGER NOT NULL,
  fecha      DATE    NOT NULL,
  es_habil   INTEGER NOT NULL DEFAULT 1, 
  UNIQUE (grupo_id, fecha),
  FOREIGN KEY (grupo_id) REFERENCES grupos(id)
);

CREATE TABLE asistencias (
  id              INTEGER PRIMARY KEY,
  inscripcion_id  INTEGER NOT NULL,
  fecha           DATE    NOT NULL,
  presente        INTEGER NOT NULL,      
  UNIQUE (inscripcion_id, fecha),
  FOREIGN KEY (inscripcion_id) REFERENCES inscripciones(id)
);

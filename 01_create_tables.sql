-- Reinicio ordenado (PostgreSQL)
DROP TABLE IF EXISTS asistencia;
DROP TABLE IF EXISTS inscripciones;
DROP TABLE IF EXISTS grupos;
DROP TABLE IF EXISTS maestros;
DROP TABLE IF EXISTS alumnos;

-- Catálogos
CREATE TABLE alumnos (
  id      SERIAL PRIMARY KEY,
  nombre  TEXT NOT NULL
);

CREATE TABLE maestros (
  id      SERIAL PRIMARY KEY,
  nombre  TEXT NOT NULL
);

CREATE TABLE grupos (
  id          SERIAL PRIMARY KEY,
  nombre      TEXT NOT NULL,
  maestro_id  INTEGER NOT NULL REFERENCES maestros(id)
);

-- Relación alumno-grupo
CREATE TABLE inscripciones (
  id         SERIAL PRIMARY KEY,
  alumno_id  INTEGER NOT NULL REFERENCES alumnos(id),
  grupo_id   INTEGER NOT NULL REFERENCES grupos(id),
  UNIQUE (alumno_id, grupo_id)
);

-- Registro de asistencia por inscripción y fecha
CREATE TABLE asistencia (
  id              SERIAL PRIMARY KEY,
  inscripcion_id  INTEGER NOT NULL REFERENCES inscripciones(id),
  fecha           DATE    NOT NULL,
  presente        BOOLEAN NOT NULL DEFAULT TRUE,
  UNIQUE (inscripcion_id, fecha)
);

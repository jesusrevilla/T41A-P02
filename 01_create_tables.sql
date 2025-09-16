CREATE TABLE alumno (
  id VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL
);

-- Crear tabla Maestro
CREATE TABLE maestro (
  id VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL
);

-- Crear tabla Grupo
CREATE TABLE grupo (
  id VARCHAR(10) PRIMARY KEY,
  periodo VARCHAR(20) NOT NULL,
  seccion VARCHAR(20) NOT NULL,
  materia VARCHAR(20) NOT NULL,
  maestro_id VARCHAR(10),
  FOREIGN KEY (maestro_id) REFERENCES maestro(id)
);

-- Crear tabla Inscripcion
CREATE TABLE inscripcion (
  alumno_id VARCHAR(10),
  grupo_id VARCHAR(10),
  fecha DATE NOT NULL,
  FOREIGN KEY (alumno_id) REFERENCES alumno(id),
  FOREIGN KEY (grupo_id) REFERENCES grupo(id),
  PRIMARY KEY (alumno_id, grupo_id)
);

-- Crear tabla Asistencia
CREATE TABLE asistencia (
  alumno_id VARCHAR(10) NOT NULL,
  fecha_hora TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  grupo_id VARCHAR(10) NOT NULL,
  PRIMARY KEY (alumno_id, fecha_hora, grupo_id),
  FOREIGN KEY (alumno_id) REFERENCES alumno(id),
  FOREIGN KEY (grupo_id) REFERENCES grupo(id)
);

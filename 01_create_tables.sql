-- create
CREATE TABLE alumno (
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  carrera VARCHAR(50) NOT NULL,
  id_alumno INTEGER NOT NULL,
  PRIMARY KEY (id_alumno)
);

CREATE TABLE profesor(
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  departamento VARCHAR(30) NOT NULL,
  profesor_id VARCHAR(30) NOT NULL,
  PRIMARY KEY (profesor_id)
);

CREATE TABLE grupo (
  clave_materia VARCHAR(5) NOT NULL,
  materia VARCHAR(50) NOT NULL,
  horario VARCHAR(50) NOT NULL,
  periodo VARCHAR(10) NOT NULL,
  profesor_id VARCHAR(30) NOT NULL,
  PRIMARY KEY (clave_materia),
  FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id)
   ON DELETE RESTRICT 
   ON UPDATE CASCADE 
);

CREATE TABLE inscripcion (
  id SERIAL PRIMARY KEY,
  id_alumno INTEGER NOT NULL,
  clave_materia VARCHAR(5) NOT NULL,
  FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno),
  FOREIGN KEY (clave_materia) REFERENCES grupo(clave_materia)
);

CREATE TABLE asistencia (
  id SERIAL PRIMARY KEY,
  id_alumno INTEGER NOT NULL,
  clave_materia VARCHAR(5) NOT NULL,
  asistencia TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno),
  FOREIGN KEY (clave_materia) REFERENCES grupo(clave_materia)
);

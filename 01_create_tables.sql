CREATE TABLE alumno (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  apellidos VARCHAR(40) NOT NULL
);
 
-- Maestro
CREATE TABLE maestro (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  apellidos VARCHAR(40) NOT NULL
);
 
-- Grupo (con maestro asignado)
CREATE TABLE grupo (
  id SERIAL PRIMARY KEY,
  periodo VARCHAR(20) NOT NULL,     
  materia VARCHAR(20) NOT NULL,
  maestro_id INTEGER NOT NULL,
  FOREIGN KEY (maestro_id) REFERENCES maestro(id)
);
 
-- Inscripcion 
CREATE TABLE inscripcion (
  id SERIAL NOT NULL,
  anio INTEGER NOT NULL,
  periodo VARCHAR(20),             
  grupo_id INTEGER NOT NULL,
  alumno_id INTEGER NOT NULL,
  FOREIGN KEY (grupo_id) REFERENCES grupo(id),
  FOREIGN KEY (alumno_id) REFERENCES alumno(id),
  PRIMARY KEY (anio, periodo, id, alumno_id)
);
 
-- Asistencia
CREATE TABLE asistencia (
  alumno_id INTEGER NOT NULL,
  fecha_hora TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  grupo_id INTEGER NOT NULL,
  PRIMARY KEY (alumno_id, fecha_hora, presente),
  FOREIGN KEY (alumno_id) REFERENCES alumno(id),
  FOREIGN KEY (grupo_id) REFERENCES grupo(id)
);

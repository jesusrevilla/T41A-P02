CREATE TABLE carrera(
  id_carrera SERIAL PRIMARY KEY,
  nombre VARCHAR(5) NOT NULL
);

CREATE TABLE alumno(
  matricula INTEGER PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50) NOT NULL,
  id_carrera INTEGER NOT NULL,
  FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE maestro(
  id_maestro SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50) NOT NULL
);

CREATE TABLE materia(
  codigo VARCHAR(3) PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  id_carrera INTEGER NOT NULL,
  FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE grupo(
  id_grupo SERIAL PRIMARY KEY,
  id_maestro INTEGER NOT NULL,
  codigo_materia VARCHAR(3) NOT NULL,
  codigo_grupo VARCHAR(1) NOT NULL,
  periodo VARCHAR(6) NOT NULL,
  FOREIGN KEY (id_maestro) REFERENCES maestro(id_maestro)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (codigo_materia) REFERENCES materia(codigo)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE inscripcion(
  id_inscripcion SERIAL PRIMARY KEY,
  matricula INTEGER NOT NULL,
  id_grupo INTEGER NOT NULL,
  FOREIGN KEY (matricula) REFERENCES alumno(matricula)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
    ON DELETE CASCADE
    ON UPDATE CASCADE 
);

CREATE TABLE asistencia(
  id_asistencia SERIAL PRIMARY KEY,
  id_inscripcion INTEGER NOT NULL,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  asistio BOOLEAN NOT NULL,
  FOREIGN KEY (id_inscripcion) REFERENCES inscripcion(id_inscripcion)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

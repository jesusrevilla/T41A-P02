-- create tables
CREATE TABLE estudiante (
  matricula VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(50) NOT NULL, 
  carrera VARCHAR(10)
);

CREATE TABLE maestros(
  matricula VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(50) NOT NULL
);

CREATE TABLE materias(
 idMateria SERIAL PRIMARY KEY,
 nombre VARCHAR(40) NOT NULL,
 horasSemanales INTEGER NOT NULL
);

    

CREATE TABLE grupo(
  idMateria INTEGER NOT NULL,
  matriculaMaestro VARCHAR(10) NOT NULL,
  seccion VARCHAR(10) NOT NULL,
  periodo VARCHAR(10) NOT NULL,
  PRIMARY KEY (seccion, periodo),
  FOREIGN KEY (matriculaMaestro) REFERENCES maestros(matricula)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY (idMateria) REFERENCES materias(idMateria)
      ON DELETE CASCADE 
      ON UPDATE CASCADE
);

CREATE TABLE inscripcion(
  idInscripcion SERIAL PRIMARY KEY,
  matriculaAlumno VARCHAR(10) NOT NULL,
  idGrupo VARCHAR(20) NOT NULL,
  periodo VARCHAR(20) NOT NULL,
  FOREIGN KEY (matriculaAlumno) REFERENCES estudiante(matricula)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY (idGrupo, periodo) REFERENCES grupo(seccion, periodo)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE asistencia(
  idAsistencia VARCHAR(30),
  matriculaAlumno VARCHAR(10) NOT NULL,
  fechaHora TIMESTAMP NOT NULL,
  idGrupo VARCHAR(20) NOT NULL,
  periodo VARCHAR(10) NOT NULL,
  presente BOOLEAN NOT NULL,
  FOREIGN KEY (matriculaAlumno) REFERENCES estudiante(matricula)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY (idGrupo, periodo) REFERENCES grupo(seccion, periodo)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  PRIMARY KEY (matriculaAlumno, idGrupo, fechaHora)
);


CREATE TABLE estudiante (
  id_estudiante INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL
);

CREATE TABLE maestros (
  id_profesor INTEGER PRIMARY KEY,
  nombre_profesor TEXT NOT NULL,
  apellido_profesor TEXT NOT NULL,
  departamento TEXT NOT NULL
);

CREATE TABLE grupo (
  id_curso varchar(15),
  periodo varchar(15),
  id_profesor INT REFERENCES Maestros(id_profesor) NOT NULL,
  nombre_curso TEXT NOT NULL,
  creditos TEXT NOT NULL,
  PRIMARY KEY (id_curso, periodo)
);


CREATE TABLE inscripcion (
  id_estudiante INT REFERENCES Estudiante(id_estudiante) NOT NULL,
  id_curso varchar(15),
  periodo varchar(15),
  fecha_inscripcion DATE NOT NULL,
  FOREIGN KEY (id_curso, periodo) REFERENCES Grupo(id_curso, periodo)
);

CREATE TABLE asistencia (
  id_estudiante INT REFERENCES Estudiante(id_estudiante) NOT NULL,
  id_curso varchar(15) NOT NULL,
  periodo varchar(15) NOT NULL,
  fecha_hora TIMESTAMP,
  presente boolean,
  FOREIGN KEY (id_curso, periodo) REFERENCES Grupo(id_curso, periodo)
);

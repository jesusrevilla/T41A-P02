CREATE TABLE Estudiante (
  id_estudiante INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE Maestros (
  id_profesor INTEGER PRIMARY KEY,
  nombre_profesor TEXT NOT NULL,
  apellido_profesor TEXT NOT NULL,
  departamento TEXT NOT NULL
);

CREATE TABLE Grupo (
  id_curso INTEGER PRIMARY KEY,
  id_profesor INT REFERENCES Maestros(id_profesor) NOT NULL,
  nombre_curso TEXT NOT NULL,
  creditos TEXT NOT NULL
);

CREATE TABLE Inscripcion (
  id_estudiante INT REFERENCES Estudiante(id_estudiante) NOT NULL,
  id_curso INT REFERENCES Grupo(id_curso) NOT NULL,
  fecha_inscripcion DATE NOT NULL
);

CREATE TABLE Asistencia(
  id_matricula INT REFERENCES Estudiante(id_estudiante) NOT NULL,
  id_curso INTEGER REFERENCES Grupo(id_curso) NOT NULL, 
  fecha_hora TIMESTAMP,
  presente boolean
);

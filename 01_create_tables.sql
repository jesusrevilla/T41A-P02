CREATE TABLE alumno (
  matricula INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(100) NOT NULL
);

CREATE TABLE maestros (
  id_maestro SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE grupos (
  periodo VARCHAR(10) NOT NULL,
  seccion VARCHAR(10) NOT NULL,
  nombre_grupo VARCHAR(10) NOT NULL,      
  id_curso INT NOT NULL,
  id_maestro INT NOT NULL,
  PRIMARY KEY (periodo, seccion),
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
  FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestro),
  UNIQUE(nombre_grupo)
);

CREATE TABLE inscripcion (
  matricula INT NOT NULL,
  periodo VARCHAR(10) NOT NULL,
  seccion VARCHAR(10) NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (matricula, periodo, seccion),
  FOREIGN KEY (matricula) REFERENCES alumno(matricula),
  FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
);

CREATE TABLE asistencia (
  matricula INT NOT NULL,
  periodo VARCHAR(10) NOT NULL,
  seccion VARCHAR(10) NOT NULL,
  fecha_hora TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  PRIMARY KEY (matricula, periodo, seccion, fecha_hora),
  FOREIGN KEY (matricula) REFERENCES alumno(matricula),
  FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
);

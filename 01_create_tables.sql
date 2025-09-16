CREATE TABLE estudiante(
  matricula VARCHAR(20) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);

CREATE TABLE maestro(
  maestro_id SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);

CREATE TABLE grupo(
  grupo_id SERIAL PRIMARY KEY,
  periodo TEXT NOT NULL,
  materia TEXT NOT NULL,
  maestro_id INTEGER NOT NULL,
  FOREIGN KEY (maestro_id) REFERENCES maestro(maestro_id)
);

CREATE TABLE inscripcion(
  grupo_id INTEGER NOT NULL,
  matricula VARCHAR(20) NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  FOREIGN KEY (grupo_id) REFERENCES grupo(grupo_id),
  FOREIGN KEY (matricula) REFERENCES estudiante(matricula)
);

CREATE TABLE asistencia(
  matricula VARCHAR(20) NOT NULL,
  fecha_hora TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  FOREIGN KEY (matricula) REFERENCES estudiante(matricula)
);

CREATE TABLE estudiante(
  matricula VARCHAR(20) PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

CREATE TABLE profesor(
  profesor_id SERIAL PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

CREATE TABLE grupo(
  periodo VARCHAR(50) NOT NULL,
  seccion VARCHAR(6) NOT NULL,
  nombre_grupo VARCHAR(50) NOT NULL,
  id_profesor SERIAL REFERENCES profesor(profesor_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY (periodo, seccion)
);

CREATE TABLE inscripcion(
  matricula VARCHAR(20) NOT NULL,
  periodo VARCHAR(50) NOT NULL,
  seccion VARCHAR(6) NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  FOREIGN KEY (matricula) REFERENCES estudiante(matricula) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (periodo, seccion) REFERENCES grupo(periodo, seccion) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY (matricula, periodo, seccion)
);

CREATE TABLE asistencia (
    matricula VARCHAR(20) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (matricula) REFERENCES estudiante(matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (periodo, seccion) REFERENCES grupo(periodo, seccion) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (matricula, periodo, seccion, fecha_hora)
);

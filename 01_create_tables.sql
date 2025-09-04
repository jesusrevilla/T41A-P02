-- create
CREATE TABLE alumno (
  matricula_alumno INTEGER PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  apellidos VARCHAR NOT NULL
);

CREATE TABLE maestro(
  matricula_maestro INTEGER PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  apellidos VARCHAR NOT NULL,
  departamento VARCHAR NOT NULL
);

CREATE TABLE materia (
  id_materia SERIAL PRIMARY KEY,
  nombre_materia VARCHAR NOT NULL,
  horas INTEGER NOT NULL,
  seccion TEXT NOT NULL,
  creditos INTEGER NOT NULL
);

CREATE TABLE grupos (
  id_grupo SERIAL NOT NULL,
  nombre_grupo VARCHAR NOT NULL,
  id_materia INTEGER references materia(id_materia) NOT NULL,
  PRIMARY KEY (id_grupo),
  matricula_maestro INTEGER references maestro(matricula_maestro) 
        ON DELETE RESTRICT                 
        ON UPDATE CASCADE   
);

CREATE TABLE inscripcion (
  id_inscripcion SERIAL PRIMARY KEY,
  matricula_alumno INTEGER references alumno(matricula_alumno)
        ON DELETE CASCADE                  
        ON UPDATE CASCADE, 
  id_grupo INTEGER references grupos(id_grupo)
        ON DELETE CASCADE                  
        ON UPDATE CASCADE, 
  periodo TEXT NOT NULL
);

CREATE TABLE asistencia (
  id_asistencia SERIAL NOT NULL,
  PRIMARY KEY (id_asistencia),
  matricula_alumno INTEGER references alumno(matricula_alumno)
        ON DELETE CASCADE                  
        ON UPDATE CASCADE, 
  id_inscripcion INTEGER REFERENCES inscripcion(id_inscripcion)
        ON DELETE CASCADE                  
        ON UPDATE CASCADE, 
  asistencia TIMESTAMP NOT NULL
);

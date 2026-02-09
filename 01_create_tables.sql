CREATE TABLE estudiante(
  id_estudiante SERIAL PRIMARY KEY,
  matricula VARCHAR(10) NOT NULL,
  nombre VARCHAR (80) NOT NULL
);

CREATE TABLE maestro(
  id_maestro SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

CREATE TABLE materia(
  id_materia SERIAL PRIMARY KEY,
  nombre VARCHAR (70) NOT NULL,
  creditos INTEGER NOT NULL
);

--una materia tiene varios grupos
CREATE TABLE grupos(
  id_grupo SERIAL,
  seccion VARCHAR (10) NOT NULL,
  periodo VARCHAR (10) NOT NULL,
  id_materia INTEGER REFERENCES materia(id_materia) --FK 
        ON DELETE RESTRICT        --impide borrar materias     
        ON UPDATE CASCADE,         --si actualiza un dato se actualizan en todas las tablas 
  id_maestro INTEGER REFERENCES maestro(id_maestro)  --FK
        ON DELETE RESTRICT        --impide borrar maestros si tiene grupos asignados        
        ON UPDATE CASCADE,         --si actualiza un dato se actualizan en todas las tablas 
  PRIMARY KEY (id_grupo, seccion, periodo)
);

--un alumno esta en varios grupos
CREATE TABLE inscripcion( --enlaza grupo, alumno e inscripcion
  id_inscripcion SERIAL,
  id_estudiante INTEGER NOT NULL, 
  id_grupo INTEGER NOT NULL,
  periodo VARCHAR (10) NOT NULL,
  seccion VARCHAR (10) NOT NULL,
  FOREIGN KEY (id_estudiante) REFERENCES estudiante (id_estudiante)
        ON DELETE CASCADE                 --se borra alumno y sus inscripciones
        ON UPDATE CASCADE,                --se actualizan los daots en todas las tablas 
  FOREIGN KEY (id_grupo,periodo,seccion) REFERENCES grupos(id_grupo,periodo,seccion)
        ON DELETE CASCADE                 
        ON UPDATE CASCADE,
  PRIMARY KEY (periodo,seccion,id_inscripcion)
);

--query para registrar asistencia de tal grupo
--cuantas faltas tiene el alumno de tal grupo
CREATE TABLE asistencia(
  id_asistencia SERIAL,
  id_estudiante INTEGER  REFERENCES estudiante (id_estudiante) --dato de estudiante
        ON DELETE CASCADE                 
        ON UPDATE CASCADE,
  id_grupo INTEGER NOT NULL,
  seccion VARCHAR (10) NOT NULL,
  periodo VARCHAR (10) NOT NULL,
  FOREIGN KEY (id_grupo,periodo,seccion) REFERENCES grupos(id_grupo,periodo,seccion)
        ON DELETE CASCADE                 
        ON UPDATE CASCADE,
  fecha_hora TIMESTAMP NOT NULL,
  asistio BOOLEAN NOT NULL,
  PRIMARY KEY (id_asistencia, fecha_hora)
);

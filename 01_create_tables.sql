
    -- create
CREATE TABLE alumnos (
  matricula INTEGER PRIMARY KEY NOT NULL,
  nombre_estudiante varchar(50) NOT NULL
);

CREATE TABLE maestros (
  maestro_id SERIAL PRIMARY KEY,
  nombre_maestro varchar(50) NOT NULL
);

CREATE TABLE periodo (
  periodo_id SERIAL PRIMARY KEY,
  tipo_periodo varchar(50) NOT NULL UNIQUE
  CHECK (tipo_periodo IN ('Primavera', 'Verano', 'Otoño')) --Solo puede poner entre esos periodos
);

CREATE TABLE materias (
  materia_id SERIAL PRIMARY KEY,
  nombre_materia varchar(50) NOT NULL,
  tipo_materia varchar(50) NOT NULL
);

CREATE TABLE grupos (
  grupo_id VARCHAR(50) PRIMARY KEY, -- Mantener grupo_id como PK
  nombre_grupo varchar(60) NOT NULL,
  materia_id int NOT NULL,
  maestro_id int NOT NULL,
  periodo_id int NOT NULL,
  FOREIGN KEY (materia_id) REFERENCES materias(materia_id),
  FOREIGN KEY (maestro_id) REFERENCES maestros(maestro_id)
    ON DELETE RESTRICT, --No puede eliminar un maestro si ya tiene grupos asignados
  FOREIGN KEY (periodo_id) REFERENCES periodo(periodo_id)
);

CREATE TABLE inscripciones (
  inscripcion_id SERIAL PRIMARY KEY,
  matricula INTEGER NOT NULL,
  grupo_id varchar(50) NOT NULL,
  FOREIGN KEY (matricula) REFERENCES alumnos(matricula)
    ON DELETE CASCADE, --Si se elimina el alumno elimina sus inscripciones
  FOREIGN KEY (grupo_id) REFERENCES grupos(grupo_id), -- Ahora hace referencia al nuevo PK
  UNIQUE(matricula, grupo_id) --Impide que el alumno se inscriba 2 veces en el mismo grupo
);

CREATE TABLE asistencia (
  asistencia_id SERIAL PRIMARY KEY,
  inscripcion_id int NOT NULL,
  hora_fecha timestamp NOT NULL,
  faltas_acum int NOT NULL,
  retardos int NOT NULL,
  FOREIGN KEY (inscripcion_id) REFERENCES inscripciones(inscripcion_id)
);
    

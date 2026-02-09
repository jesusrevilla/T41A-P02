-- Tabla Alumno
CREATE TABLE alumnos (
  id_alumno SERIAL PRIMARY KEY,
  matricula INT UNIQUE NOT NULL,
  nombre_alumno VARCHAR(100) NOT NULL
);

-- Tabla Grupo
CREATE TABLE grupos (
  id_grupo SERIAL PRIMARY KEY,
  nombre_grupo VARCHAR(50) NOT NULL
);

-- Tabla Maestro
CREATE TABLE maestros (
  id_maestro SERIAL PRIMARY KEY,
  nombre_maestro VARCHAR(100) NOT NULL
);

-- Tabla Materia
CREATE TABLE materias (
  id_materia SERIAL PRIMARY KEY,
  nombre_materia VARCHAR(100) NOT NULL,
  id_maestro INT REFERENCES maestros(id_maestro),
  id_grupo INT REFERENCES grupos(id_grupo)
);

-- Tabla Inscripción (relaciona alumno con grupo y periodo)
CREATE TABLE inscripciones (
  id_inscripcion SERIAL PRIMARY KEY,
  id_alumno INT REFERENCES alumnos(id_alumno),
  id_grupo INT REFERENCES grupos(id_grupo),
  periodo VARCHAR(10) NOT NULL
);

-- Tabla Asistencia (cada registro es la asistencia de un alumno en una clase específica)
CREATE TABLE asistencias (
  id_asistencia SERIAL PRIMARY KEY,
  id_inscripcion INT REFERENCES inscripciones(id_inscripcion),
  id_materia INT REFERENCES materias(id_materia),
  fecha_asistencia DATE NOT NULL,
  estado_asistencia VARCHAR(20) CHECK (estado_asistencia IN ('Asistio', 'Falto', 'Retardo'))
);

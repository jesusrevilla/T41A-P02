
-- 1) Periodo
CREATE TABLE periodo (
  id_periodo BIGSERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  fecha_inicio TIMESTAMP NOT NULL,
  fecha_fin TIMESTAMP NOT NULL,
  CHECK (fecha_fin > fecha_inicio)
);

-- 2) Maestro
CREATE TABLE maestro (
  id_maestro BIGSERIAL PRIMARY KEY,
  nombres VARCHAR(80) NOT NULL,
  apellidos VARCHAR(80) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE
);

-- 3) Grupo
CREATE TABLE grupo (
  id_grupo BIGSERIAL PRIMARY KEY,
  clave VARCHAR(30) NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  id_periodo BIGINT NOT NULL,
  id_maestro BIGINT,
  UNIQUE (id_periodo, clave),
  FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo) ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (id_maestro) REFERENCES maestro(id_maestro) ON DELETE SET NULL ON UPDATE RESTRICT
);

-- 4) Alumno
CREATE TABLE alumno (
  id_alumno BIGSERIAL PRIMARY KEY,
  matricula VARCHAR(30) NOT NULL UNIQUE,
  nombres VARCHAR(80) NOT NULL,
  apellidos VARCHAR(80) NOT NULL,
  email VARCHAR(120) UNIQUE
);

-- 5) Inscripción
CREATE TABLE inscripcion (
  id_inscripcion BIGSERIAL PRIMARY KEY,
  id_alumno BIGINT NOT NULL,
  id_grupo BIGINT NOT NULL,
  fecha_inscripcion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estatus VARCHAR(20) NOT NULL DEFAULT 'ACTIVA',
  UNIQUE (id_alumno, id_grupo),
  FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno) ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (id_grupo)  REFERENCES grupo(id_grupo)  ON DELETE RESTRICT ON UPDATE RESTRICT,
  CHECK (estatus IN ('ACTIVA','BAJA','CONGELADA'))
);

-- 6) Asistencia
CREATE TABLE asistencia (
  id_asistencia BIGSERIAL PRIMARY KEY,
  id_inscripcion BIGINT NOT NULL,
  fecha TIMESTAMP NOT NULL,
  presente BOOLEAN NOT NULL,
  nota TEXT,
  UNIQUE (id_inscripcion, fecha),
  FOREIGN KEY (id_inscripcion) REFERENCES inscripcion(id_inscripcion) ON DELETE RESTRICT ON UPDATE RESTRICT
);
    

--  Tabla de Alumnos
CREATE TABLE alumnos (
    matricula INTEGER PRIMARY KEY,          -- ID único del alumno ANTES ERA TEXT
    nombre VARCHAR(100) NOT NULL                 -- Nombre completo
);

-- Tabla de Maestros
CREATE TABLE maestros (
    id_maestro SERIAL PRIMARY KEY,       -- ID único del maestro
    nombre VARCHAR(100) NOT NULL                 -- Nombre completo
);

-- Tabla de Grupos
CREATE TABLE grupos (
    periodo VARCHAR(10) NOT NULL,        -- Ejemplo: '20253S'
    seccion VARCHAR(10) NOT NULL,               -- Ejemplo: 'T41A'
    nombre_grupo VARCHAR(50) NOT NULL,
    id_maestro INTEGER NOT NULL,         -- Maestro asignado
    PRIMARY KEY (periodo, seccion),
    FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestro)

);

-- Tabla de Inscripciones
CREATE TABLE inscripciones (
    matricula INTEGER NOT NULL,             -- Alumno inscrito
    periodo VARCHAR(10) NOT NULL,               -- Periodo del grupo
    seccion VARCHAR(10) NOT NULL,               -- Sección del grupo
    fecha_inscripcion DATE NOT NULL,     -- Fecha de inscripción
    PRIMARY KEY (matricula, periodo, seccion),
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
);

-- Tabla de Asistencia
CREATE TABLE asistencia (
    matricula INTEGER NOT NULL,             -- Alumno que asiste
    periodo TEXT NOT NULL,               -- Periodo del grupo
    seccion TEXT NOT NULL,
    fecha_a TIMESTAMP NOT NULL, -- Sección del grupo
    presente BOOLEAN NOT NULL,
    PRIMARY KEY (matricula, periodo, seccion,fecha_a),
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion)
);

-- Creación de la tabla 'carrera'
CREATE TABLE carrera (
id_carrera SERIAL PRIMARY KEY,
nombre VARCHAR(25) NOT NULL
);

-- Creación de la tabla 'maestro'
CREATE TABLE maestro (
id_maestro SERIAL PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL
);

-- Creación de la tabla 'alumno'
CREATE TABLE alumno (
id_alumno SERIAL PRIMARY KEY,
matricula VARCHAR(10) NOT NULL UNIQUE,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL
);

-- Creación de la tabla 'grupo'
CREATE TABLE grupo (
id_grupo SERIAL PRIMARY KEY,
clave VARCHAR(10) NOT NULL,
materia VARCHAR(25) NOT NULL,
periodo VARCHAR(15) NOT NULL,
id_maestro INTEGER NOT NULL,
id_carrera INTEGER NOT NULL,
FOREIGN KEY (id_maestro) REFERENCES maestro(id_maestro)
ON DELETE RESTRICT
ON UPDATE CASCADE,
FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
ON DELETE RESTRICT
ON UPDATE CASCADE
);

-- Creación de la tabla 'inscripcion'
CREATE TABLE inscripcion (
id_inscripcion SERIAL PRIMARY KEY,
id_alumno INTEGER NOT NULL,
id_grupo INTEGER NOT NULL,
FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
ON DELETE CASCADE
ON UPDATE CASCADE
);

-- Creación de la tabla 'asistencia'
CREATE TABLE asistencia (
id_asistencia SERIAL PRIMARY KEY,
id_inscripcion INTEGER NOT NULL,
presente BOOLEAN NOT NULL,
FOREIGN KEY (id_inscripcion) REFERENCES inscripcion(id_inscripcion)
ON DELETE CASCADE
ON UPDATE CASCADE
);

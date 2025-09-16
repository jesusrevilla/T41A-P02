-- Tabla Alumnos
CREATE TABLE Alumnos (
    id_alumno SERIAL PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50),
    fecha_nacimiento DATE,
    email VARCHAR(100) UNIQUE
);

-- Tabla Profesores
CREATE TABLE Profesores (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- Tabla Materias
CREATE TABLE Materias (
    id_materia SERIAL PRIMARY KEY,
    nombre_materia VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Tabla Periodos
CREATE TABLE Periodos (
    id_periodo SERIAL PRIMARY KEY,
    nombre_periodo VARCHAR(50) UNIQUE NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL
);

-- Tabla Grupos
CREATE TABLE Grupos (
    id_grupo SERIAL PRIMARY KEY,
    codigo_grupo VARCHAR(20) NOT NULL,
    id_materia INT NOT NULL,
    id_profesor INT NOT NULL,
    id_periodo INT NOT NULL,
    FOREIGN KEY (id_materia) REFERENCES Materias(id_materia),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor),
    FOREIGN KEY (id_periodo) REFERENCES Periodos(id_periodo)
);

-- Tabla Inscripciones
CREATE TABLE Inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    id_alumno INT NOT NULL,
    id_grupo INT NOT NULL,
    fecha_inscripcion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    FOREIGN KEY (id_grupo) REFERENCES Grupos(id_grupo)
);

-- Tabla Asistencias
CREATE TABLE Asistencias (
    id_asistencia SERIAL PRIMARY KEY,
    id_inscripcion INT NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    estado_asistencia VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion)
);

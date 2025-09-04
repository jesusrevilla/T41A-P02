-- ==============================================
-- TABLA: Grupos
-- ==============================================
CREATE TABLE Grupos (
    id_grupo SERIAL PRIMARY KEY,
    codigo VARCHAR(10) UNIQUE NOT NULL  -- Ej: S38A, S38E, T41A, T48A
);

-- ==============================================
-- TABLA: Profesor
-- ==============================================
CREATE TABLE Profesor (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

-- ==============================================
-- TABLA: Curso
-- ==============================================
CREATE TABLE Curso (
    id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INTEGER NOT NULL,
    año INT NOT NULL,
    id_profesor INTEGER,
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- ==============================================
-- TABLA: Alumnos
-- ==============================================
CREATE TABLE Alumnos(
    id_alumno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    matricula INT UNIQUE NOT NULL,
    correo VARCHAR(100) NOT NULL,
    semestre INT NOT NULL,
    id_grupo INTEGER,
    FOREIGN KEY (id_grupo) REFERENCES Grupos(id_grupo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- ==============================================
-- TABLA: Inscripción
-- ==============================================
CREATE TABLE Inscripcion (
    id_inscripcion SERIAL PRIMARY KEY,
    id_alumno INTEGER NOT NULL,
    id_curso INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- ==============================================
-- TABLA: Asistencia
-- ==============================================
CREATE TABLE Asistencia (
    id_asistencia SERIAL PRIMARY KEY,
    id_inscripcion INTEGER NOT NULL,
    fecha DATE NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripcion(id_inscripcion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
    

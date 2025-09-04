-- tabla Estudiante
CREATE TABLE Estudiante (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    carrera VARCHAR(100)
);

-- tabla Libro
CREATE TABLE Libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(100),
    anio_publicacion INT,
    isbn VARCHAR(20) UNIQUE
);

--  tabla Prestamo
CREATE TABLE Prestamo (
    id SERIAL PRIMARY KEY,
    estudiante_id INT NOT NULL,
    libro_id INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    estado VARCHAR(10) NOT NULL, 
    
    -- llaves foráneas 
    FOREIGN KEY (estudiante_id) REFERENCES Estudiante(id),
    FOREIGN KEY (libro_id) REFERENCES Libro(id)
);

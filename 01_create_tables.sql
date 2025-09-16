-- Luis David Vidales Ramirez
CREATE TABLE alumnos (
    matricula INT PRIMARY KEY,    
    nombre VARCHAR(70) NOT NULL          
);

CREATE TABLE profesores (
    id_profesor SERIAL PRIMARY KEY,    
    nombre VARCHAR(70));

CREATE TABLE grupos (
    periodo VARCHAR(10) NOT NULL,       
    seccion VARCHAR(10) NOT NULL,         
    nombre VARCHAR(50) NOT NULL,    
    id_profesor INTEGER NOT NULL,          
    PRIMARY KEY (periodo, seccion),
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);

CREATE TABLE inscripciones (
    matricula INT NOT NULL,      
    periodo VARCHAR(10) NOT NULL,         
    seccion VARCHAR(10) NOT NULL,         
    fecha_inscripcion DATE NOT NULL,      
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion)
);

CREATE TABLE asistencia (
    matricula INT NOT NULL,        
    periodo VARCHAR(10) NOT NULL,         
    seccion VARCHAR(10) NOT NULL,       
    fecha_hora TIMESTAMP NOT NULL,        
    presente BOOLEAN NOT NULL,           
 
    FOREIGN KEY (matricula) REFERENCES alumnos(matricula),
    FOREIGN KEY (periodo, seccion) REFERENCES grupos(periodo, seccion),
    PRIMARY KEY (matricula, periodo, seccion, fecha_hora)
);

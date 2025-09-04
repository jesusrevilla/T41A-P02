
INSERT INTO alumno (matricula, nombre, apellido, semestre) VALUES
(1005, 'Luis', 'González', 'Primero'),
(1006, 'María', 'Hernández', 'Tercero'),
(1007, 'Jorge', 'Ramírez', 'Quinto'),
(1008, 'Diana', 'Castro', 'Séptimo'),
(1009, 'Paola', 'Morales', 'Octavo'),
(1010, 'Felipe', 'Navarro', 'Segundo'),
(1011, 'Sofía', 'Treviño', 'Tercero'),
(1012, 'Andrés', 'Vega', 'Cuarto'),
(1013, 'Lucía', 'Martínez', 'Sexto'),
(1014, 'Iván', 'Domínguez', 'Octavo');


INSERT INTO inscripcion (matricula, fecha) VALUES
(1005, '2025-09-01'),
(1006, '2025-09-01'),
(1007, '2025-09-01'),
(1008, '2025-09-01'),
(1009, '2025-09-01'),
(1010, '2025-09-01'),
(1011, '2025-09-01'),
(1012, '2025-09-01'),
(1013, '2025-09-01'),
(1014, '2025-09-01');


INSERT INTO maestro (nombre, apellido) VALUES
('José', 'Cortés'),
('Marina', 'Delgado'),
('Ricardo', 'Pineda'),
('Esther', 'Cabrera'),
('Hugo', 'Salas'),
('Nadia', 'Ortega'),
('Alonso', 'Jiménez'),
('Claudia', 'Peña'),
('David', 'Santos'),
('Brenda', 'Vargas');


INSERT INTO materia (nombre) VALUES
('Programación'),
('Estadística'),
('Álgebra'),
('Historia'),
('Literatura'),
('Inglés'),
('Redes'),
('Filosofía'),
('Economía'),
('Ética');


INSERT INTO grupo(grupo) VALUES
('G21A'),
('H22B'),
('I23C'),
('J24D'),
('K25E'),
('L26F'),
('M27G'),
('N28H'),
('P29I'),
('Q30J');


INSERT INTO materia_grupo (id_materia, grupo) VALUES
(5, 'G21A'),
(6, 'H22B'),
(7, 'I23C'),
(8, 'J24D'),
(9, 'K25E'),
(10, 'L26F'),
(1, 'M27G'),
(2, 'N28H'),
(3, 'P29I'),
(4, 'Q30J');


INSERT INTO maestro_materia (id_maestro, id_materia, grupo) VALUES
(5, 5, 'G21A'),
(6, 6, 'H22B'),
(7, 7, 'I23C'),
(8, 8, 'J24D'),
(9, 9, 'K25E'),
(10, 10, 'L26F'),
(1, 1, 'M27G'),
(2, 2, 'N28H'),
(3, 3, 'P29I'),
(4, 4, 'Q30J');


INSERT INTO alumno_materia (matricula, id_materia, grupo) VALUES
(1005, 5, 'G21A'),
(1006, 6, 'H22B'),
(1007, 7, 'I23C'),
(1008, 8, 'J24D'),
(1009, 9, 'K25E'),
(1010, 10, 'L26F'),
(1011, 1, 'M27G'),
(1012, 2, 'N28H'),
(1013, 3, 'P29I'),
(1014, 4, 'Q30J');


INSERT INTO asistencia (fecha, id_materia, id_alumno, asistencia) VALUES
('2025-09-02', 5, 1005, TRUE),
('2025-09-02', 6, 1006, FALSE),
('2025-09-02', 7, 1007, TRUE),
('2025-09-02', 8, 1008, TRUE),
('2025-09-02', 9, 1009, FALSE),
('2025-09-02', 10, 1010, TRUE),
('2025-09-02', 1, 1011, TRUE),
('2025-09-02', 2, 1012, FALSE),
('2025-09-02', 3, 1013, TRUE),
('2025-09-02', 4, 1014, FALSE);


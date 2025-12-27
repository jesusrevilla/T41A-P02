INSERT INTO alumno (matricula, nombre, apellido) VALUES
('B001', 'Valeria', 'Hernández'),
('B002', 'Mateo', 'Martínez'),
('B003', 'Camila', 'Rojas'),
('B004', 'Andrés', 'Paredes'),
('B005', 'Lucía', 'Santos'),
('B006', 'Felipe', 'Ortiz'),
('B007', 'Daniela', 'Vega'),
('B008', 'Santiago', 'Morales'),
('B009', 'Paola', 'Flores'),
('B010', 'Emilio', 'Cruz');

INSERT INTO curso (nombre) VALUES
('Programación I'),
('Programación II'),
('Estructuras de Datos'),
('Sistemas Operativos'),
('Redes de Computadoras'),
('Inteligencia Artificial'),
('Desarrollo Web'),
('Bases de Datos'),
('Cálculo Diferencial'),
('Estadística');

INSERT INTO maestro (nombre, apellido) VALUES
('Alejandro', 'García'),
('Mariana', 'López'),
('Roberto', 'Fernández'),
('Patricia', 'Jiménez'),
('Fernando', 'Castillo'),
('Gabriela', 'Moreno'),
('Héctor', 'Ramírez'),
('Laura', 'Campos'),
('Iván', 'Pérez'),
('Beatriz', 'Reyes');

INSERT INTO grupo (curso_id, maestro_id, periodo, seccion) VALUES
(1, 1, '2025-1', 'P1A'),
(1, 2, '2025-1', 'P1B'),
(2, 3, '2025-1', 'P2A'),
(2, 4, '2025-1', 'P2B'),
(3, 5, '2025-1', 'ED1A'),
(3, 6, '2025-1', 'ED1B'),
(4, 7, '2025-1', 'SO1A'),
(5, 8, '2025-1', 'RC1A'),
(6, 9, '2025-1', 'IA1A'),
(7, 10, '2025-1', 'DW1A');

INSERT INTO inscripcion (alumno_id, grupo_id, fecha_inscripcion) VALUES
(1, 1, '2025-08-15'),
(2, 1, '2025-08-15'),
(3, 2, '2025-08-15'),
(4, 2, '2025-08-15'),
(5, 3, '2025-08-15'),
(6, 3, '2025-08-15'),
(7, 4, '2025-08-15'),
(8, 5, '2025-08-15'),
(9, 6, '2025-08-15'),
(10, 7, '2025-08-15');

INSERT INTO asistencia (alumno_id, grupo_id, fecha, presente) VALUES
(1, 1, '2025-09-01 08:00:00', TRUE),
(2, 1, '2025-09-01 08:00:00', FALSE),
(3, 2, '2025-09-01 10:00:00', TRUE),
(4, 2, '2025-09-01 10:00:00', FALSE),
(5, 3, '2025-09-01 12:00:00', TRUE),
(6, 3, '2025-09-01 12:00:00', FALSE),
(7, 4, '2025-09-01 14:00:00', TRUE),
(8, 5, '2025-09-01 16:00:00', TRUE),
(9, 6, '2025-09-01 18:00:00', FALSE),
(10, 7, '2025-09-01 20:00:00', TRUE);

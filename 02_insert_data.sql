INSERT INTO materias (id, nombre) VALUES
  (1, 'Bases de Datos'),
  (2, 'Ingeniería de Software');

INSERT INTO grupos (id, materia_id, nombre) VALUES
  (10, 1, 'BD-01'),
  (20, 2, 'IS-01');

INSERT INTO alumnos (id, nombre) VALUES
  (100, 'Ana'),
  (200, 'Bruno'),
  (300, 'Carla');

INSERT INTO inscripciones (id, alumno_id, grupo_id) VALUES
  (1001, 100, 10),
  (1002, 200, 10),
  (1003, 300, 20);

INSERT INTO calendario (id, grupo_id, fecha, es_habil) VALUES
  (1, 10, '2025-09-01', 1),
  (2, 10, '2025-09-03', 1),
  (3, 10, '2025-09-05', 0),  
  (4, 20, '2025-09-02', 1),
  (5, 20, '2025-09-04', 1),
  (6, 20, '2025-09-06', 1);


INSERT INTO asistencias (id, inscripcion_id, fecha, presente) VALUES
  (10, 1001, '2025-09-01', 1),
  (11, 1001, '2025-09-03', 0),
  (12, 1002, '2025-09-01', 0);

INSERT INTO asistencias (id, inscripcion_id, fecha, presente) VALUES
  (20, 1003, '2025-09-02', 1),
  (21, 1003, '2025-09-04', 1),
  (22, 1003, '2025-09-06', 1);

SELECT c.periodo, 
       c.clave AS seccion, 
       c.nombre AS nombre_curso,
       COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM asistencia a
JOIN curso c 
  ON a.id_curso = c.id_curso AND a.periodo = c.periodo
GROUP BY c.periodo, c.clave, c.nombre
ORDER BY c.clave;

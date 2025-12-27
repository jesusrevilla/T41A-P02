SELECT g.periodo, 
       g.seccion, 
       c.nombre AS curso,
       COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas,
       COUNT(*) FILTER (WHERE a.presente = TRUE) AS total_asistencias,
       COUNT(*) AS total_registros
FROM asistencia a
JOIN grupo g ON a.grupo_id = g.grupo_id
JOIN curso c ON g.curso_id = c.curso_id
GROUP BY g.periodo, g.seccion, c.nombre
ORDER BY g.seccion;


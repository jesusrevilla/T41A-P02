SELECT g.periodo, g.seccion, g.id_materia,
  COUNT(*) FILTER (WHERE a.asistio = FALSE) AS total_faltas
FROM asistencia a
JOIN grupos g ON a.periodo = g.periodo AND a.seccion = g.seccion
GROUP BY g.periodo, g.seccion, g.id_materia
ORDER BY g.seccion;

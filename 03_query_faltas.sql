   -- SELECT g.periodo, g.seccion, g.nombre_grupo,
   --        COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
   -- FROM asistencia a
   -- JOIN grupos g ON a.periodo = g.periodo AND a.seccion = g.seccion
   -- GROUP BY g.periodo, g.seccion, g.nombre_grupo
   -- ORDER BY g.seccion;


SELECT i.periodo, g.seccion, g.nombre_grupo,
    COUNT(*) FILTER (WHERE a.asistencia IS NULL) AS total_faltas
FROM asistencia a
JOIN inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN grupos g ON i.id_grupo = g.id_grupo
GROUP BY i.periodo, g.seccion, g.nombre_grupo
ORDER BY g.seccion;

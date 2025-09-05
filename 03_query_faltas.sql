-- ==============================================
-- Mostrar faltas
-- ==============================================
 SELECT
  g.codigo AS grupo,
  COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM asistencia a
JOIN inscripcion i   ON a.id_inscripcion = i.id_inscripcion
JOIN alumnos al      ON i.id_alumno = al.id_alumno
LEFT JOIN grupos g   ON al.id_grupo = g.id_grupo
GROUP BY g.codigo
ORDER BY g.codigo;


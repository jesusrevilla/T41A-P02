/*
  Faltas por alumno/grupo respecto a un calendario hipotético de 1 fecha por inscripción
  (la misma que insertamos arriba). Si presente=FALSE => 1 falta; si TRUE => 0.
*/
SELECT
  a.id       AS alumno_id,
  a.nombre   AS alumno,
  g.id       AS grupo_id,
  g.nombre   AS grupo,
  SUM(CASE WHEN asis.presente IS FALSE THEN 1 ELSE 0 END) AS faltas
FROM inscripciones i
JOIN alumnos a ON a.id = i.alumno_id
JOIN grupos  g ON g.id = i.grupo_id
LEFT JOIN asistencia asis ON asis.inscripcion_id = i.id
GROUP BY a.id, a.nombre, g.id, g.nombre
ORDER BY faltas DESC, alumno ASC;

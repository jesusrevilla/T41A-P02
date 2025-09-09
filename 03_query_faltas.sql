
WITH clases_habiles AS (
  SELECT c.grupo_id, c.fecha
  FROM calendario c
  WHERE c.es_habil = 1
),
asistencias_norm AS (
  SELECT i.id AS inscripcion_id, i.alumno_id, i.grupo_id,
         a.fecha, a.presente
  FROM inscripciones i
  LEFT JOIN asistencias a
    ON a.inscripcion_id = i.id
)
SELECT
  al.id         AS alumno_id,
  al.nombre     AS alumno,
  g.id          AS grupo_id,
  g.nombre      AS grupo,
  SUM(
    CASE

      WHEN ch.fecha IS NOT NULL AND (an.fecha IS NULL OR an.presente = 0) THEN 1
      ELSE 0
    END
  ) AS faltas
FROM inscripciones i
JOIN alumnos al ON al.id = i.alumno_id
JOIN grupos  g  ON g.id  = i.grupo_id
LEFT JOIN clases_habiles ch
       ON ch.grupo_id = i.grupo_id
LEFT JOIN asistencias_norm an
       ON an.inscripcion_id = i.id
      AND an.fecha = ch.fecha
GROUP BY al.id, al.nombre, g.id, g.nombre
ORDER BY faltas DESC, alumno ASC;

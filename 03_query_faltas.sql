SELECT
    g.periodo,
    g.clave,
    g.materia,
    COUNT(a.presente) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM
    asistencia a
JOIN
    inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN
    grupo g ON i.id_grupo = g.id_grupo
GROUP BY
    g.periodo, g.clave, g.materia
ORDER BY
    g.clave;

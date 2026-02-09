SELECT
    g.periodo,
    g.codigo_grupo,
    m.nombre AS nombre_materia,
    COUNT(a.asistio) FILTER (WHERE a.asistio = FALSE) AS total_faltas
FROM
    asistencia a
JOIN
    inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN
    grupo g ON i.id_grupo = g.id_grupo
JOIN
    materia m ON g.codigo_materia = m.codigo
GROUP BY
    g.periodo,
    g.codigo_grupo,
    m.nombre
ORDER BY
    g.periodo,
    g.codigo_grupo;

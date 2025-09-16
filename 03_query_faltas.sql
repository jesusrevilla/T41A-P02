SELECT
    p.nombre_periodo,
    g.codigo_grupo,
    m.nombre_materia,
    COUNT(a.estado_asistencia) FILTER (WHERE a.estado_asistencia = 'Ausente') AS total_faltas
FROM
    Asistencias a
JOIN
    Inscripciones i ON a.id_inscripcion = i.id_inscripcion
JOIN
    Grupos g ON i.id_grupo = g.id_grupo
JOIN
    Materias m ON g.id_materia = m.id_materia
JOIN
    Periodos p ON g.id_periodo = p.id_periodo
GROUP BY
    p.nombre_periodo,
    g.codigo_grupo,
    m.nombre_materia
ORDER BY
    p.nombre_periodo,
    g.codigo_grupo;

SELECT 
    i.periodo,
    g.nombre_grupo,
    COUNT(*) FILTER (WHERE a.estado_asistencia = 'Falto') AS total_faltas,
    COUNT(*) FILTER (WHERE a.estado_asistencia = 'Asistio') AS total_asistencias,
    COUNT(*) FILTER (WHERE a.estado_asistencia = 'Retardo') AS total_retardos
FROM asistencia a
JOIN inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN grupo g ON i.id_grupo = g.id_grupo
GROUP BY i.periodo, g.nombre_grupo
ORDER BY g.nombre_grupo;

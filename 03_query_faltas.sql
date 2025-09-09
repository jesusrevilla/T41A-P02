SELECT 
    p.nombre AS periodo,
    g.clave AS seccion,
    g.nombre AS nombre_grupo,
    COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM asistencia a
JOIN inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN grupo g ON i.id_grupo = g.id_grupo
JOIN periodo p ON g.id_periodo = p.id_periodo
GROUP BY p.nombre, g.clave, g.nombre
ORDER BY g.clave;

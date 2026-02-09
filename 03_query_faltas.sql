SELECT 
    g.periodo, 
    g.seccion, 
    m.nombre AS nombre_materia,
    COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM asistencia a
JOIN grupo g 
    ON a.periodo = g.periodo 
   AND a.idGrupo = g.seccion
JOIN materias m
    ON g.idMateria = m.idMateria
GROUP BY g.periodo, g.seccion, m.nombre
ORDER BY g.seccion;

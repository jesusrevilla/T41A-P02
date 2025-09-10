SELECT 
    a.id_estudiante,
    e.nombre,
    a.id_grupo,
    a.periodo,
    m.descripcion,
    COUNT(*) FILTER (WHERE a.presente = false) AS total_faltas
FROM asistencia a
JOIN estudiante e ON a.id_estudiante = e.matricula
JOIN grupo g ON a.id_grupo = g.id AND a.periodo = g.periodo
JOIN materia m ON g.id_materia = m.id
GROUP BY a.id_estudiante, e.nombre, a.id_grupo, a.periodo, m.descripcion
ORDER BY a.id_estudiante;

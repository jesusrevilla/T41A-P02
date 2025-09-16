SELECT g.periodo, g.id_curso, g.nombre_curso,
    COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM Asistencia a
JOIN grupo g ON a.id_curso = g.id_curso AND a.periodo = g.periodo
GROUP BY g.periodo, g.id_curso, g.nombre_curso
ORDER BY g.id_curso;

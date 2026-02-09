    SELECT g.periodo, g.seccion, g.nombre_grupo,
           COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
    FROM asistencia a
    JOIN grupos g ON a.periodo = g.periodo AND a.seccion = g.seccion
    GROUP BY g.periodo, g.seccion, g.nombre_grupo
    ORDER BY g.seccion;
SELECT e.matricula,
       e.nombre AS nombre_estudiante,
       c.nombre AS nombre_curso,
       c.grupo,
       COUNT(*) FILTER (WHERE a.asistio = FALSE) AS total_faltas
FROM asistencia a
JOIN estudiante e ON a.matricula = e.matricula
JOIN curso c ON a.nombre = c.nombre AND a.grupo = c.grupo
GROUP BY e.matricula, e.nombre, c.nombre, c.grupo
ORDER BY e.matricula;

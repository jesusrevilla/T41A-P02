    SELECT g.periodo, g.clave_materia , COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
    FROM asistencia a JOIN grupo g ON a.clave_materia = g.clave_materia
    GROUP BY g.periodo,g.clave_materia, g.materia ORDER BY g.materia;

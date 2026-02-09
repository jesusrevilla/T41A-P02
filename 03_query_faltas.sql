    SELECT p.tipo_periodo, g.nombre_grupo, m.nombre_materia, 
    SUM(a.faltas_acum) AS total_faltas,
    SUM(a.retardos) AS total_retardos
FROM asistencia AS a
JOIN inscripciones AS i ON a.inscripcion_id = i.inscripcion_id
JOIN grupos AS g ON i.grupo_id = g.grupo_id
JOIN periodo AS p ON g.periodo_id = p.periodo_id
JOIN materias AS m ON g.materia_id = m.materia_id
GROUP BY p.tipo_periodo, g.nombre_grupo, m.nombre_materia
ORDER BY p.tipo_periodo, g.nombre_grupo;

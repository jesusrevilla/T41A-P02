-- ==============================================
-- Mostrar faltas
-- ==============================================
 SELECT
    g.codigo AS grupo,
    c.nombre_curso AS nombre_materia,
    COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM
    Asistencia a
JOIN
    Inscripcion i ON a.id_inscripcion = i.id_inscripcion
JOIN
    Curso c ON i.id_curso = c.id_curso
JOIN
    Alumnos al ON i.id_alumno = al.id_alumno
JOIN
    Grupos g ON al.id_grupo = g.id_grupo
GROUP BY
    g.codigo,
    c.nombre_curso
ORDER BY
    g.codigo;

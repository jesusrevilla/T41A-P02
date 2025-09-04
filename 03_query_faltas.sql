-- ==============================================
-- Mostrar faltas
-- ==============================================
SELECT
    c.nombre_curso AS "Materia",
    g.codigo AS "Grupo",
    a.nombre || ' ' || a.apellidos AS "Alumno",
    a.matricula AS "Matrícula",
    COUNT(*) FILTER (WHERE asis.presente = FALSE) AS "Faltas"
FROM
    Asistencia asis
JOIN
    Inscripcion i ON asis.id_inscripcion = i.id_inscripcion
JOIN
    Alumnos a ON i.id_alumno = a.id_alumno
JOIN
    Curso c ON i.id_curso = c.id_curso
JOIN
    Grupos g ON a.id_grupo = g.id_grupo
GROUP BY
    c.nombre_curso,
    g.codigo,
    a.id_alumno
ORDER BY
    c.nombre_curso,
    g.codigo,
    a.apellidos;

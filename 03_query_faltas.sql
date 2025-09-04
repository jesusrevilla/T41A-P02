-- ==============================================
-- Mostrar faltas por alumno
-- ==============================================

SELECT
    c.nombre_curso AS "Materia",
    a.nombre || ' ' || a.apellidos AS "Alumno",
    a.matricula AS "Matrícula",
    COUNT(*) FILTER (WHERE asis.presente = FALSE) AS "Faltas"
FROM
    Curso c
JOIN
    Inscripcion i ON i.id_curso = c.id_curso
JOIN
    Alumnos a ON a.id_alumno = i.id_alumno
LEFT JOIN
    Asistencia asis ON asis.id_inscripcion = i.id_inscripcion
GROUP BY
    c.nombre_curso,
    a.id_alumno
ORDER BY
    c.nombre_curso,
    a.apellidos;

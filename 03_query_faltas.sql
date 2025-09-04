SELECT am.grupo, mat.nombre AS nombre_materia,
       COUNT(*) FILTER (WHERE asi.asistencia = FALSE) AS total_faltas
FROM asistencia asi
JOIN alumno_materia am ON asi.id_alumno = am.matricula 
                       AND asi.id_materia = am.ID_materia
JOIN materia mat ON asi.id_materia = mat.id_materia
GROUP BY am.grupo, mat.nombre
ORDER BY am.grupo;

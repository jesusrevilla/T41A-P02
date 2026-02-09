SELECT g.periodo, g.clave, g.nombre AS nombre_grupo,
       COUNT(a.id_asistencia) AS total_asistencias
FROM grupo g
LEFT JOIN asistencia a ON g.id_grupo = a.id_grupo
GROUP BY g.periodo, g.clave, g.nombre
ORDER BY g.clave;

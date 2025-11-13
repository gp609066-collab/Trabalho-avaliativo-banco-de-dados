SELECT m.nome, SUM(c.valor) AS total_valor
FROM Consulta c
JOIN Medico m ON c.id_medico = m.id_medico
GROUP BY m.nome
ORDER BY total_valor DESC
LIMIT 1;

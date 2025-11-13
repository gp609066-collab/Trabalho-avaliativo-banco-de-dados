SELECT MONTH(data_consulta) AS mes, SUM(valor) AS faturamento_total
FROM Consulta
WHERE MONTH(data_consulta) = 11
GROUP BY mes;

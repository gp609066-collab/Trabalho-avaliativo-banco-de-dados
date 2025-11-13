SELECT e.nome, COUNT(pe.id_exame) AS total_solicitacoes
FROM PedidoExame pe
JOIN Exame e ON pe.id_exame = e.id_exame
GROUP BY e.nome
ORDER BY total_solicitacoes DESC;

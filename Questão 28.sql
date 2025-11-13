SELECT c.id_consulta, e.nome, pe.subtotal
FROM PedidoExame pe
JOIN Exame e ON pe.id_exame = e.id_exame
JOIN Consulta c ON pe.id_consulta = c.id_consulta
WHERE pe.subtotal > (SELECT AVG(preco_base) FROM Exame);

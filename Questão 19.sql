START TRANSACTION;

INSERT INTO Paciente (nome, cpf, data_nascimento, telefone, email, tipo_atendimento, data_cadastro)
VALUES ('Mariana Lopes','13131313131','1999-04-10','11922223333','mariana@gmail.com','Particular',CURDATE());

SET @novo_paciente = LAST_INSERT_ID();

INSERT INTO Consulta (id_paciente, id_medico, data_consulta, hora, valor, status)
VALUES (@novo_paciente, 1, CURDATE(), '10:00', 200, 'Agendada');

SET @nova_consulta = LAST_INSERT_ID();

INSERT INTO PedidoExame (id_consulta, id_exame, quantidade, subtotal)
SELECT @nova_consulta, id_exame, 1, preco_base FROM Exame;

COMMIT;

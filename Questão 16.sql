INSERT INTO Paciente (nome, cpf, data_nascimento, telefone, email, tipo_atendimento, data_cadastro, id_convenio)
VALUES ('Lucas Nunes','12121212121','1998-05-05','11912345678','lucas@gmail.com','Convenio',CURDATE(),1);

INSERT INTO Consulta (id_paciente, id_medico, data_consulta, hora, valor, status)
VALUES (LAST_INSERT_ID(),1,'2025-11-12','09:00',200,'Agendada');

INSERT INTO PedidoExame (id_consulta, id_exame, quantidade, subtotal)
VALUES (LAST_INSERT_ID(),1,1,80);

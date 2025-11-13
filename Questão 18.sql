DELIMITER //
CREATE PROCEDURE inserir_consulta_com_exames(
    IN nome_paciente VARCHAR(100),
    IN cpf CHAR(11),
    IN id_medico INT,
    IN id_exame1 INT,
    IN id_exame2 INT
)
BEGIN
    DECLARE novo_paciente INT;
    DECLARE nova_consulta INT;
    
    INSERT INTO Paciente (nome, cpf, data_nascimento, tipo_atendimento, data_cadastro)
    VALUES (nome_paciente, cpf, '2000-01-01', 'Particular', CURDATE());
    SET novo_paciente = LAST_INSERT_ID();
    
    INSERT INTO Consulta (id_paciente, id_medico, data_consulta, hora, valor, status)
    VALUES (novo_paciente, id_medico, CURDATE(), '09:00', 200, 'Agendada');
    SET nova_consulta = LAST_INSERT_ID();
    
    INSERT INTO PedidoExame (id_consulta, id_exame, quantidade, subtotal)
    VALUES (nova_consulta, id_exame1, 1, 100),
           (nova_consulta, id_exame2, 1, 150);
END //
DELIMITER ;

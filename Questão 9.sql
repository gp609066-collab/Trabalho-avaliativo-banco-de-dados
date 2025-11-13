INSERT INTO Paciente (nome, cpf, data_nascimento, telefone, email, tipo_atendimento, data_cadastro)
VALUES
('Ana Souza','11111111111','1990-02-15','11999999999','ana@gmail.com','Particular',CURDATE()),
('Bruno Lima','22222222222','1985-03-10','11988888888','bruno@gmail.com','Convenio',CURDATE()),
('Carlos Silva','33333333333','1992-07-22','11977777777','carlos@gmail.com','Particular',CURDATE()),
('Daniela Reis','44444444444','1980-01-01','11966666666','dani@gmail.com','Convenio',CURDATE()),
('Eduardo Pires','55555555555','1995-09-15','11955555555','edu@gmail.com','Particular',CURDATE()),
('Fernanda Alves','66666666666','1993-11-11','11944444444','fernanda@gmail.com','Convenio',CURDATE()),
('Gabriel Rocha','77777777777','1989-06-06','11933333333','gabriel@gmail.com','Particular',CURDATE()),
('Helena Costa','88888888888','1991-04-04','11922222222','helena@gmail.com','Convenio',CURDATE()),
('Igor Tavares','99999999999','1987-08-18','11911111111','igor@gmail.com','Particular',CURDATE()),
('Julia Mendes','00000000000','1996-10-10','11888888888','julia@gmail.com','Convenio',CURDATE());

INSERT INTO Medico (nome, crm, especialidade, cargo, salario, data_admissao)
VALUES
('Dr. João','CRM001','Cardiologia','Médico',12000,'2020-01-10'),
('Dra. Maria','CRM002','Dermatologia','Médico',10000,'2021-02-12'),
('Dr. Pedro','CRM003','Ortopedia','Médico',11000,'2019-06-05'),
('Dra. Luiza','CRM004','Pediatria','Médico',9500,'2022-03-08'),
('Dr. Felipe','CRM005','Neurologia','Médico',13000,'2018-07-15');

INSERT INTO Convenio (nome, contato, cnpj, desconto)
VALUES
('SaudeMais','1111-1111','12345678000199',10.00),
('BemViver','2222-2222','98765432000155',15.00),
('VidaTop','3333-3333','45678912000133',12.50);

INSERT INTO Exame (nome, preco_base, tipo, tempo_liberacao)
VALUES
('Hemograma',80,'Laboratorial',2),
('Raio-X',150,'Imagem',1),
('Ressonância',500,'Imagem',3),
('Eletrocardiograma',120,'Laboratorial',1),
('Ultrassom',200,'Imagem',2);

INSERT INTO Consulta (id_paciente, id_medico, data_consulta, hora, valor, status)
VALUES
(1,1,'2025-11-01','09:00',200,'Realizada'),
(2,2,'2025-11-02','10:00',180,'Agendada'),
(3,3,'2025-11-03','11:00',220,'Realizada'),
(4,4,'2025-11-04','12:00',150,'Cancelada'),
(5,5,'2025-11-05','13:00',250,'Realizada'),
(6,1,'2025-11-06','14:00',200,'Agendada'),
(7,2,'2025-11-07','15:00',180,'Realizada'),
(8,3,'2025-11-08','16:00',220,'Realizada'),
(9,4,'2025-11-09','17:00',150,'Realizada'),
(10,5,'2025-11-10','18:00',250,'Agendada');
  

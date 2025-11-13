CREATE TABLE Convenio (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    cnpj CHAR(14),
    desconto DECIMAL(5,2)
);

CREATE TABLE Medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    especialidade VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    tipo_atendimento ENUM('Particular', 'Convenio'),
    data_cadastro DATE,
    id_convenio INT,
    FOREIGN KEY (id_convenio) REFERENCES Convenio(id_convenio)
);

CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_consulta DATE,
    hora TIME,
    valor DECIMAL(10,2),
    status ENUM('Agendada','Realizada','Cancelada'),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

CREATE TABLE Exame (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor_base DECIMAL(10,2),
    tipo VARCHAR(50),
    tempo_liberacao INT
);

CREATE TABLE PedidoExame (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT,
    id_exame INT,
    quantidade INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_exame) REFERENCES Exame(id_exame)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT,
    forma_pagamento ENUM('Dinheiro','Cartao','Pix','Boleto'),
    valor_pago DECIMAL(10,2),
    data_pagamento DATE
);

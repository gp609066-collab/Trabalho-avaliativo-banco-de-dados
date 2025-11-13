ALTER TABLE Paciente
ADD CONSTRAINT chk_data_nasc CHECK (data_nascimento < CURDATE());

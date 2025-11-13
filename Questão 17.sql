DELETE FROM Paciente
WHERE id_paciente NOT IN (SELECT id_paciente FROM Consulta);

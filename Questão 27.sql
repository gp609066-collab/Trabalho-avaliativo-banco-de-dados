SELECT v.nome AS convenio, COUNT(p.id_paciente) AS total_pacientes
FROM Convenio v
JOIN Paciente p ON p.id_convenio = v.id_convenio
GROUP BY v.nome
ORDER BY total_pacientes DESC;

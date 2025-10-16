SELECT
genero,
SUM("horas assistidas") AS total_horas_assistidas
FROM 
projeto_recolhimento
GROUP BY 
genero
ORDER BY 
total_horas_assistidas

SELECT
    titulo,
    genero, 
    SUM("horas assistidas") AS total_horas_assistidas
FROM
    "projeto_recolhimento"
GROUP BY
    titulo, genero
ORDER BY
    total_horas_assistidas DESC
LIMIT 10;

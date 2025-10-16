SELECT
    data,
    hora,
    "usuários distíntos" 
FROM
    "projeto_recolhimento"
ORDER BY
    "usuários distíntos" DESC
LIMIT 1;

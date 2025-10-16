CREATE OR REPLACE VIEW pico_acesso_por_genero AS
WITH PicoPorGenero AS (
    SELECT
        genero,
        hora,
        "usuários distíntos",
        -- Rankeia a linha com o maior número de usuários distintos DENTRO de cada gênero
        ROW_NUMBER() OVER (PARTITION BY genero ORDER BY "usuários distíntos" DESC) as rank_pico
    FROM
        "projeto_recolhimento"
)
SELECT
    genero,
    hora AS "horario_pico",
    "usuários distíntos" AS "max_usuarios_simultaneos"
FROM
    PicoPorGenero
WHERE
    rank_pico = 1
ORDER BY
    "max_usuarios_simultaneos" DESC;


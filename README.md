# Projeto: Relatórios de Otimização de Conteúdo (PostgreSQL)

Este repositório contém a lógica SQL para os relatórios diários de otimização de conteúdo e infraestrutura.

---

## 1. Relatório: Gêneros Mais Vistos
*Código:* [sql/01_relatorio_generos.sql](sql/01_relatorio_generos.sql)

**Objetivo:** Identificar as categorias de conteúdo mais populares.
**Resultado (Exemplo):**

| genero | total_horas_assistidas |
| :--- | :--- |
| Drama | 50000 |
| Humor | 42000 |
| Horror | 35000 |

---

## 2. Relatório: Top 10 Títulos
*Código:* [sql/top10.sql](sql/top10.sql)

**Objetivo:** Informar o time de marketing sobre os 10 produtos de maior sucesso.
**Resultado (Exemplo):**

# 📺 Ranking de Títulos por Horas Assistidas

| Título                   | Gênero       | Total de Horas Assistidas |
|--------------------------|-------------|----------------------------|
| Farmers Of The Mountains | Drama       | 43.246                     |
| Scent Of The Sea         | Romance     | 39.348                     |
| Fate Of Shadows          | Fantasy     | 38.936                     |
| Loss                     | Sci-Fi      | 38.916                     |
| Wives And Rebels         | Mistery     | 38.340                     |
| Rat Of The Eternal       | Fantasy     | 38.158                     |
| Agents Of Heaven         | Adventure   | 37.866                     |
| And Dogs                 | Horror      | 37.276                     |
| Rescue In Nature         | Fantasy     | 35.932                     |

## 📊 Observações
- 🎖 **Mais assistido:** *Farmers Of The Mountains* (Drama)  
- 🧙 **Gênero mais frequente:** *Fantasy* (3 títulos no Top 9)  
- 🕐 **Menor audiência:** *Rescue In Nature* (35.932 horas)  


---
## 3.pico_geral
pedido:qual a data e hora com maior número de usuários assistindo simultaneamente
e quantos usuários estavam assistindo neste momento.
*Código:* [sql/pico_geral.sql](sql/pico_geral.sql)

retorno:
|Data        | hora   | usúarios distíntos|
"2021-02-25"	  9	          789


## 4. Otimização de Rede: Pico de Acesso por Gênero
*Código:* [sql/pico_por_genero.sql](sql/pico_por_genero.sql)

a ideia dessa implementação de melhoria surgiu no ambito de criar uma tabela auxiliar (ou View) que calcule o horário de pico de usuários distintos para cada gênero. Depois podemos usar essa tabela para consultar qual deve ser a capacidade de rede naquele horário.Isso garante que, quando os usuários buscarem um conteúdo específico no horário de maior demanda, o risco de buffering será minimizado.

**Objetivo:** Programar a capacidade de rede por horário para evitar *buffering*.
**Resultado (Exemplo):**

# 🎭 Ranking de Gêneros por Popularidade

| Gênero       | Quantidade de Títulos | Média de Horas Assistidas |
|--------------|------------------------|----------------------------|
| Romance      | 9                      | 789                        |
| Humor        | 14                     | 784                        |
| Fantasy      | 4                      | 781                        |
| Sci-Fi       | 8                      | 777                        |
| Drama        | 9                      | 776                        |
| Mistery      | 5                      | 775                        |
| Adventure    | 7                      | 759                        |
| Nonfiction   | 14                     | 748                        |
| Children     | 2                      | 743                        |
| Horror       | 8                      | 734                        |

## 📊 Observações
- 🥇 **Gênero mais popular:** *Romance* — com média de **789 horas assistidas**.  
- 🧠 *Humor* e *Romance* são os gêneros com mais títulos (14 e 9).  
- 👻 *Horror* apresenta a menor média de horas assistidas (**734 horas**).  
- ✨ *Fantasy* tem poucos títulos, mas uma média alta.
.

## 5 consultas atualizadas 
compartilhar por um email programado a atualização direta dessas devidas coletas da tabela todos os dias.implementação de Views no PostgreSQL e a criação de um Script de Automação.

# 📊 Extração de Relatórios de Audiência (PostgreSQL → Excel)

1- o script python adicionado realiza, conecção, consulta e salva os dados em arquivos CSV ou Excel.
2-Crie uma Tarefa Básica, Gatilho (Trigger) escolha  "Diariamente" e defina o horário., depois Escolha "Iniciar um programa", Digite o caminho completo do seu interpretador Python  e por fim, Digite o caminho completo do seu script .


---

## 🚀 Funcionalidades

- 📥 Conecta automaticamente ao banco de dados PostgreSQL.  
- 📝 Executa consultas SQL .
- 💾 Exporta os resultados para arquivos `.xlsx` com data no nome.  
- 🔐 Fecha a conexão de forma segura mesmo em caso de erro.

---

## 🧰 Tecnologias Utilizadas

- [Python 3+](https://www.python.org/)
- [psycopg2](https://www.psycopg.org/docs/) — Conexão com PostgreSQL
- [Pandas](https://pandas.pydata.org/) — Manipulação de dados e exportação
- [OpenPyXL](https://openpyxl.readthedocs.io/en/stable/) — Escrita de Excel




| Drama | 18 | 450 |
| Horror | 22 | 400 |
| ... | ... | ... |# PostgreSQL_Streaming

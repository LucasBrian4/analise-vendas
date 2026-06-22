# Análise de Vendas

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat&logo=powerbi&logoColor=black)

Análise exploratória de um dataset com **1.000 registros de vendas (2023)**
usando SQL para extração e Power BI para visualização.

---

## Principais insights

- Faturamento total: **$5,02 milhões** — 1.000 transações com ticket médio de **$5.020**
- Vendedor líder: **David**
- Categoria mais vendida: **Roupas**, com maior faturamento entre as 4 categorias
- Região com mais receita: **Norte**, ligeiramente à frente de Leste e Oeste
- Faturamento estável ao longo do ano, com leve queda em fevereiro e pico em novembro
- Canal Online representa **51,01%** do faturamento vs. 48,99% no Varejo
- Clientes novos e recorrentes têm participação quase idêntica: **~50% cada**

---

## Perguntas respondidas

| # | Pergunta |
|---|----------|
| 1 | Qual o faturamento total? |
| 2 | Qual vendedor teve melhor desempenho? |
| 3 | Qual categoria de produto mais vendeu? |
| 4 | Qual região gerou mais receita? |
| 5 | Qual mês teve maior faturamento? |
| 6 | Qual canal de venda é mais usado? |
| 7 | Clientes novos ou recorrentes compram mais? |
| 8 | Qual método de pagamento é mais comum? |

---

## Dashboard

![preview](dashboard-vendas-preview.png)

---

## Estrutura

```
analise-vendas/
├── analise.sql              # Queries MySQL (8 análises comentadas)
├── dashboard-vendas.pbix    # Dashboard Power BI
├── dashboard-vendas-preview.png
└── sales_data.csv           # Dataset (Kaggle)
```

---

## Como usar

1. Importe `sales_data.csv` no MySQL Workbench
2. Execute `analise.sql` para rodar as queries
3. Abra `dashboard-vendas.pbix` no Power BI Desktop

---

## Tecnologias

| Ferramenta | Uso |
|------------|-----|
| MySQL | Extração e análise dos dados |
| Power BI | Visualização e dashboard |

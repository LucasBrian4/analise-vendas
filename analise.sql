
-- ================================================
-- ANÁLISE DE VENDAS
-- Dataset: Sales Dataset (Kaggle)
-- Ferramenta: MySQL Workbench
-- ================================================

USE analise_vendas;

-- ================================================
-- 1. FATURAMENTO TOTAL
-- ================================================

SELECT ROUND(SUM(Sales_Amount), 2) AS faturamento_total
FROM vendas;

-- ================================================
-- 2. VENDEDOR COM MAIS VENDAS
-- ================================================

SELECT Sales_Rep, 
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Sales_Rep
ORDER BY faturamento DESC;

-- ================================================
-- 3. CATEGORIA DE PRODUTO MAIS VENDIDA
-- ================================================

SELECT Product_Category,
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Product_Category
ORDER BY faturamento DESC;

-- ================================================
-- 4. REGIÃO COM MAIS RECEITA
-- ================================================

SELECT Region,
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Region
ORDER BY faturamento DESC;

-- ================================================
-- 5. FATURAMENTO POR MÊS
-- ================================================

SELECT MONTH(Sale_Date) AS mes,
       MONTHNAME(Sale_Date) AS nome_mes,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY mes, nome_mes
ORDER BY mes;

-- ================================================
-- 6. CANAL DE VENDA MAIS USADO
-- ================================================

SELECT Sales_Channel,
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Sales_Channel
ORDER BY faturamento DESC;

-- ================================================
-- 7. CLIENTES NOVOS VS RECORRENTES
-- ================================================

SELECT Customer_Type,
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Customer_Type
ORDER BY faturamento DESC;

-- ================================================
-- 8. MÉTODO DE PAGAMENTO MAIS COMUM
-- ================================================

SELECT Payment_Method,
       COUNT(*) AS total_vendas,
       ROUND(SUM(Sales_Amount), 2) AS faturamento
FROM vendas
GROUP BY Payment_Method
ORDER BY total_vendas DESC;
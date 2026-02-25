USE rotatividadetelecom;

-- Média de tempo de fidelidade
SELECT AVG(Tenure) AS avg_tenure
FROM rotatividadeclientes;

-- Total de clientes idosos
SELECT COUNT(*) AS total_idosos
FROM rotatividadeclientes
WHERE SeniorCitizen = 1;

-- Faturamento total
SELECT ROUND(SUM(TotalCharges),2) AS faturamento_total
FROM rotatividadeclientes;
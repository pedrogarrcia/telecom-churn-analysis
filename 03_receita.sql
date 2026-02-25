-- Maiores mensalidades
SELECT MonthlyCharges
FROM rotatividadeclientes
ORDER BY MonthlyCharges DESC
LIMIT 10;

-- Gasto médio por tempo de empresa
SELECT
    CASE
        WHEN Tenure >= 36 THEN '3 anos'
        WHEN Tenure >= 24 THEN '2 anos'
        WHEN Tenure >= 12 THEN '1 ano'
        ELSE 'menos de 1 ano'
    END AS periodo,
    ROUND(AVG(TotalCharges), 2) AS media_gasta
FROM rotatividadeclientes
GROUP BY periodo;
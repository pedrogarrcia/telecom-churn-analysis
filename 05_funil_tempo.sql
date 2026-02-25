-- Funil de tempo de permanência
SELECT 
    CASE
        WHEN Tenure < 12 THEN '0-12 meses'
        WHEN Tenure < 24 THEN '12-24 meses'
        WHEN Tenure < 36 THEN '24-36 meses'
        ELSE '36+ meses'
    END AS faixa_tempo,
    COUNT(*) AS total_clientes,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM rotatividadeclientes), 2) AS percentual
FROM rotatividadeclientes
GROUP BY faixa_tempo
ORDER BY MIN(Tenure);
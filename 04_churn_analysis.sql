-- Churn por tipo de contrato
SELECT 
    Contract,
    COUNT(*) AS total_clientes,
    SUM(Churn) AS clientes_desativados
FROM rotatividadeclientes
GROUP BY Contract
ORDER BY total_clientes DESC;

-- Taxa de churn por contrato
SELECT 
    Contract,
    total_clientes,
    clientes_desativados,
    ROUND((clientes_desativados * 100.0 / total_clientes), 2) AS percentual_churn
FROM (
    SELECT 
        Contract,
        COUNT(*) AS total_clientes,
        SUM(Churn) AS clientes_desativados
    FROM rotatividadeclientes
    GROUP BY Contract
) t
ORDER BY total_clientes DESC;
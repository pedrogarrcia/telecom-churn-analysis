-- Tipos de contrato mais utilizados
SELECT 
    Contract,
    COUNT(*) AS total_clientes
FROM rotatividadeclientes
GROUP BY Contract
ORDER BY total_clientes DESC;

-- Tipo de pagamento mais utilizado
SELECT 
    PaymentMethod,
    COUNT(*) AS total_clientes
FROM rotatividadeclientes
GROUP BY PaymentMethod
ORDER BY total_clientes DESC;

-- Top 5 clientes que mais geraram receita
SELECT 
    CustomerID, 
    TotalCharges
FROM rotatividadeclientes
ORDER BY TotalCharges DESC
LIMIT 5;
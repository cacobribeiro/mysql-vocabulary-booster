SELECT
    (
        SELECT
            CONCAT(FirstName, ' ', LastName)
        FROM
            w3schools.employees
        WHERE
            orders.EmployeeID = employees.EmployeeID
    ) AS `Nome completo`,
    COUNT(EmployeeID) AS `Total de pedidos`
FROM
    w3schools.orders
GROUP BY
    EmployeeID
ORDER BY
    `Total de pedidos`

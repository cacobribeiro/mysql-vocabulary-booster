SELECT
    ContactName AS Nome,
    Country AS País,
    (
        SELECT
            (COUNT(Country) -1)
        FROM
            w3schools.customers AS a
        WHERE
            a.Country = customers.Country
        GROUP BY
            Country
    ) AS `Número de compatriotas`
FROM
    w3schools.customers
GROUP BY
    CustomerID
HAVING
    `Número de compatriotas` > 0
ORDER BY
    ContactName;

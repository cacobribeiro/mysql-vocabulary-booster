SELECT
    p.ProductName AS `Produto`,
    p.Price AS `Preço`
FROM
    w3schools.order_details AS O
    INNER JOIN w3schools.products AS p ON O.ProductID = p.ProductID
WHERE
    Quantity > 80
ORDER BY
    `Produto`;

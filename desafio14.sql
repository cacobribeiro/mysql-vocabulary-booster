select
    Country AS País
from
    w3schools.suppliers
union
select
    Country AS País
from
    w3schools.customers
GROUP BY
    Country
ORDER BY
    País
LIMIT
    5;

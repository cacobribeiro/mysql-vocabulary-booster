SELECT (
        SELECT JOB_TITLE
        FROM hr.jobs
        WHERE JOB_ID = employees.JOB_ID
    ) AS Cargo,
    ROUND(AVG(SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Senior'
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.employees
GROUP BY Cargo
ORDER BY `Média Salarial`, Cargo;

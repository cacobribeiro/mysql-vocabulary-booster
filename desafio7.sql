SELECT
    (
        SELECT
            UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME))
        FROM
            hr.employees
        WHERE
            employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
    ) AS `Nome completo`,
    START_DATE AS `Data de início`,
    (
        SELECT
            SALARY
        FROM
            hr.employees
        WHERE
            employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
    ) AS `Salário`
FROM
    hr.job_history
WHERE
    MONTH(START_DATE) = 1
    OR MONTH(START_DATE) = 2
    OR MONTH(START_DATE) = 3
ORDER BY
    `Nome completo`,
    `Data de início`;

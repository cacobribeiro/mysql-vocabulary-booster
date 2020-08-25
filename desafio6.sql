SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    (
        SELECT JOB_TITLE
        FROM jobs
        WHERE employees.JOB_ID = jobs.JOB_ID
    ) AS Cargo,
    (
        SELECT HIRE_DATE
    ) AS `Data de início do cargo`,
    (
        SELECT DEPARTMENT_NAME
        FROM departments
        WHERE employees.DEPARTMENT_ID = DEPARTMENT_ID
    ) AS "Departamento"
FROM employees
ORDER BY `Nome completo` DESC,
    Cargo ASC;
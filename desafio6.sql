SELECT (
        SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM employees
        WHERE EMPLOYEE_ID = X.EMPLOYEE_ID
    ) AS `Nome completo`,
    (
        SELECT JOB_TITLE
        FROM jobs
        WHERE JOB_ID = X.JOB_ID
    ) AS Cargo,
    START_DATE AS `Data de início do cargo`,
    (
        SELECT DEPARTMENT_NAME
        FROM departments
        WHERE DEPARTMENT_ID = X.DEPARTMENT_ID
    ) AS "Departamento"
from job_history AS X
WHERE EMPLOYEE_ID <> 0
ORDER BY `Nome completo` DESC,
    Cargo ASC;

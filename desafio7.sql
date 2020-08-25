SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    JOB.START_DATE AS 'Data de início',
    EM.SALARY AS 'Salário'
FROM employees AS EM,
job_history AS JOB
WHERE JOB.EMPLOYEE_ID = EM.EMPLOYEE_ID
ORDER BY `Nome completo`,
    EM.HIRE_DATE;

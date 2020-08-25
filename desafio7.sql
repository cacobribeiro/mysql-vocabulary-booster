SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    EM.HIRE_DATE AS 'Data de início',
    EM.SALARY AS 'Salário'
from employees AS EM
ORDER BY `Nome completo`,
    EM.HIRE_DATE;

-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

SELECT MAX(MONTHS * SALARY), COUNT(*)
FROM EMPLOYEE
WHERE SALARY * MONTHS = (SELECT(MAX(MONTHS * SALARY)) FROM EMPLOYEE);

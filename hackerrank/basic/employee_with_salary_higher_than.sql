-- https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true

SELECT
  NAME
FROM
  EMPLOYEE
WHERE
  SALARY > 2000
  AND MONTHS < 10;

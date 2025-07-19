-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

SELECT
  ceil(
    avg(salary) - avg(replace(salary, 0, ''))
  ) + 1
FROM
  employees;

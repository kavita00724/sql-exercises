-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT CASE
           WHEN A + B <= C
               OR A + C <= B
               OR B + C <= A THEN 'Not A Triangle'
           WHEN A = B
               AND A = C THEN 'Equilateral'
           WHEN A <> B
               AND B <> C
               AND A <> C THEN 'Scalene'
           ELSE 'Isosceles' END AS TYPE
FROM TRIANGLES;

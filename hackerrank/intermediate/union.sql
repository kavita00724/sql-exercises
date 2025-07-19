-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

(
  SELECT
    CITY,
    LENGTH(CITY) AS LEN
  FROM
    STATION
  ORDER BY
    LENGTH(CITY) ASC,
    CITY ASC
  LIMIT
    1
)
UNION ALL
(
  SELECT
    CITY,
    LENGTH(CITY) AS LEN
  FROM
    STATION
  ORDER BY
    LENGTH(CITY) DESC,
    CITY ASC
  LIMIT
    1
);

-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

SELECT b.hacker_id, b.name
FROM (SELECT s.hacker_id, COUNT(DISTINCT s.challenge_id) AS count_ch
      FROM Submissions AS s
               LEFT JOIN Challenges AS c ON s.challenge_id = c.challenge_id
               LEFT JOIN Difficulty AS d ON c.difficulty_level = d.difficulty_level
      WHERE s.score = d.score
      GROUP BY s.hacker_id
      HAVING COUNT(DISTINCT s.challenge_id) >= 2) AS a
         JOIN Hackers AS b ON a.hacker_id = b.hacker_id
ORDER BY a.count_ch DESC, b.hacker_id;

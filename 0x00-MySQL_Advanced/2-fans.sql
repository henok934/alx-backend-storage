-- Create temporary table band_ranking
CREATE TEMPORARY TABLE band_ranking (
  origin VARCHAR(255),
  nb_fans INT
);

-- Insert data into band_ranking
INSERT INTO band_ranking
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;

-- Retrieve and display data from band_ranking
SELECT origin, nb_fans
FROM band_ranking;

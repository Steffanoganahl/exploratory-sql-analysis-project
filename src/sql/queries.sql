-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations
LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT id FROM regions;


-- MISSION 3
-- Your query here;
SELECT COUNT(DISTINCT id) AS species_totales FROM observations;

-- MISSION 4
-- Your query here;
SELECT * FROM observations
WHERE region_id = 2;

-- MISSION 5
-- Your query here;
SELECT * FROM observations 
WHERE observation_date = '1998-08-08';

-- MISSION 6
-- Your query here;
SELECT region_id, COUNT(*) AS total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC;

-- MISSION 7
-- Your query here;
SELECT species_id, COUNT(*) AS total_speciesobs 
FROM observations
GROUP BY species_id
ORDER BY total_speciesobs DESC
LIMIT 5;


-- MISSION 8
-- Your query here;
SELECT species_id, COUNT(*) AS total_speciesobs 
FROM observations
GROUP BY species_id 
HAVING total_speciesobs < 5
ORDER BY total_speciesobs ASC;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT(*) AS total_observations
FROM observations
GROUP BY observer
ORDER BY total_observations DESC;

-- MISSION 10
-- Your query here;
SELECT 
    o.id,
    o.observer,
    o.observation_date,
    o.count,
    r.name AS region_name,
    r.country
FROM observations o
JOIN regions r ON o.region_id = r.id;

-- MISSION 11
-- Your query here;
SELECT 
    o.id,
    o.observer,
    o.observation_date,
    o.count,
    s.scientific_name,
    s.common_name
FROM observations o
JOIN species s ON o.species_id = s.id;

-- MISSION 12
-- Your query here;
SELECT 
    r.name AS region_name,
    s.scientific_name,
    COUNT(*) AS total_observations
FROM observations o
JOIN regions r ON o.region_id = r.id
JOIN species s ON o.species_id = s.id
GROUP BY r.name, s.scientific_name
ORDER BY r.name, total_observations DESC;

-- MISSION 13
-- Your query here;
INSERT INTO observations (species_id, region_id, observer, observation_date, latitude, longitude, count)
VALUES (1, 1, 'Jane Doe', '2024-06-01', 34.05, -118.25, 3);

-- MISSION 14
-- Your query here;
UPDATE species
SET scientific_name = 'New Scientific Name'
WHERE id = 1;   


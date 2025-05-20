/* ---------- Europa (10) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('Germany'),
          ('France'),
          ('Italy'),
          ('Spain'),
          ('Netherlands'),
          ('Belgium'),
          ('Sweden'),
          ('Poland'),
          ('Romania'),
          ('Greece')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'Europe'
        ) AS c;

/* ---------- Asia (3) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('Japan'),
          ('China'),
          ('India')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'Asia'
        ) AS c;

/* ---------- America de Nord (3) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('United States'),
          ('Canada'),
          ('Mexico')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'North America'
        ) AS c;

/* ---------- America de Sud (2) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('Brazil'),
          ('Argentina')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'South America'
        ) AS c;

/* ---------- Africa (2) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('South Africa'),
          ('Kenya')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'Africa'
        ) AS c;

/* ---------- Oceania (2) ---------- */
INSERT INTO countries (country_name, continent_id)
SELECT t.country_name, c.id
FROM (VALUES
          ('Australia'),
          ('New Zealand')
     ) AS t(country_name)
         CROSS JOIN LATERAL (
    SELECT id FROM continents WHERE continent_name = 'Oceania'
        ) AS c;

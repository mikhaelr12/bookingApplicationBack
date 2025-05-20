/* =======================================================================
   Populating table `cities`
   • Each INSERT resolves the real country_id on the fly.
   • image_path left NULL (second column in VALUES); adjust later if needed.
   ======================================================================= */

/* ---------- Germany ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Berlin',        NULL),
          ('Munich',        NULL),
          ('Hamburg',       NULL),
          ('Frankfurt',     NULL),
          ('Cologne',       NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Germany'
        ) AS c;

/* ---------- France ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Paris',       NULL),
          ('Marseille',   NULL),
          ('Lyon',        NULL),
          ('Toulouse',    NULL),
          ('Nice',        NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'France'
        ) AS c;

/* ---------- Italy ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Rome',       NULL),
          ('Milan',      NULL),
          ('Naples',     NULL),
          ('Florence',   NULL),
          ('Venice',     NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Italy'
        ) AS c;

/* ---------- Spain ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Madrid',     NULL),
          ('Barcelona',  NULL),
          ('Valencia',   NULL),
          ('Seville',    NULL),
          ('Bilbao',     NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Spain'
        ) AS c;

/* ---------- Netherlands ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Amsterdam',   NULL),
          ('Rotterdam',   NULL),
          ('The Hague',   NULL),
          ('Utrecht',     NULL),
          ('Eindhoven',   NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Netherlands'
        ) AS c;

/* ---------- Belgium ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Brussels',   NULL),
          ('Antwerp',    NULL),
          ('Ghent',      NULL),
          ('Bruges',     NULL),
          ('Charleroi',  NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Belgium'
        ) AS c;

/* ---------- Sweden ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Stockholm', NULL),
          ('Gothenburg',NULL),
          ('Malmö',     NULL),
          ('Uppsala',   NULL),
          ('Västerås',  NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Sweden'
        ) AS c;

/* ---------- Poland ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Warsaw',   NULL),
          ('Kraków',   NULL),
          ('Gdańsk',   NULL),
          ('Wrocław',  NULL),
          ('Poznań',   NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Poland'
        ) AS c;

/* ---------- Romania ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Bucharest',     NULL),
          ('Cluj-Napoca',   NULL),
          ('Timișoara',     NULL),
          ('Iași',          NULL),
          ('Constanța',     NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Romania'
        ) AS c;

/* ---------- Greece ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Athens',        NULL),
          ('Thessaloniki',  NULL),
          ('Patras',        NULL),
          ('Heraklion',     NULL),
          ('Larissa',       NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Greece'
        ) AS c;

/* ---------- Japan ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Tokyo',    NULL),
          ('Osaka',    NULL),
          ('Kyoto',    NULL),
          ('Yokohama', NULL),
          ('Sapporo',  NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Japan'
        ) AS c;

/* ---------- China ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Beijing',   NULL),
          ('Shanghai',  NULL),
          ('Guangzhou', NULL),
          ('Shenzhen',  NULL),
          ('Chengdu',   NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'China'
        ) AS c;

/* ---------- India ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Mumbai',     NULL),
          ('Delhi',      NULL),
          ('Bengaluru',  NULL),
          ('Hyderabad',  NULL),
          ('Chennai',    NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'India'
        ) AS c;

/* ---------- United States ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('New York',    NULL),
          ('Los Angeles', NULL),
          ('Chicago',     NULL),
          ('Houston',     NULL),
          ('Miami',       NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'United States'
        ) AS c;

/* ---------- Canada ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Toronto',   NULL),
          ('Vancouver', NULL),
          ('Montreal',  NULL),
          ('Calgary',   NULL),
          ('Ottawa',    NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Canada'
        ) AS c;

/* ---------- Mexico ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Mexico City', NULL),
          ('Guadalajara', NULL),
          ('Monterrey',   NULL),
          ('Puebla',      NULL),
          ('Tijuana',     NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Mexico'
        ) AS c;

/* ---------- Brazil ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('São Paulo',      NULL),
          ('Rio de Janeiro', NULL),
          ('Brasília',       NULL),
          ('Salvador',       NULL),
          ('Fortaleza',      NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Brazil'
        ) AS c;

/* ---------- Argentina ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Buenos Aires', NULL),
          ('Córdoba',      NULL),
          ('Rosario',      NULL),
          ('Mendoza',      NULL),
          ('La Plata',     NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Argentina'
        ) AS c;

/* ---------- South Africa ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Johannesburg',   NULL),
          ('Cape Town',      NULL),
          ('Durban',         NULL),
          ('Pretoria',       NULL),
          ('Port Elizabeth', NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'South Africa'
        ) AS c;

/* ---------- Kenya ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Nairobi', NULL),
          ('Mombasa', NULL),
          ('Kisumu',  NULL),
          ('Nakuru',  NULL),
          ('Eldoret', NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Kenya'
        ) AS c;

/* ---------- Australia ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Sydney',    NULL),
          ('Melbourne', NULL),
          ('Brisbane',  NULL),
          ('Perth',     NULL),
          ('Adelaide',  NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Australia'
        ) AS c;

/* ---------- New Zealand ---------- */
INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
          ('Auckland',     NULL),
          ('Wellington',   NULL),
          ('Christchurch', NULL),
          ('Hamilton',     NULL),
          ('Dunedin',      NULL)
     ) AS t(city, img)
         CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'New Zealand'
        ) AS c;

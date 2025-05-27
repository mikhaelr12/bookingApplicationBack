INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Berlin', '/cities/berlin.jpg'),
      ('Munich', '/cities/munich.jpg'),
      ('Hamburg', '/cities/hamburg.jpg'),
      ('Frankfurt', '/cities/frankfurt.jpg'),
      ('Cologne', '/cities/cologne.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Germany'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Paris', '/cities/paris.jpg'),
      ('Marseille', '/cities/marseille.jpg'),
      ('Lyon', '/cities/lyon.jpg'),
      ('Toulouse', '/cities/toulouse.jpg'),
      ('Nice', '/cities/nice.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'France'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Rome', '/cities/rome.jpg'),
      ('Milan', '/cities/milan.jpg'),
      ('Naples', '/cities/naples.jpg'),
      ('Florence', '/cities/florence.jpg'),
      ('Venice', '/cities/venice.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Italy'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Madrid', '/cities/madrid.jpg'),
      ('Barcelona', '/cities/barcelona.jpg'),
      ('Valencia', '/cities/valencia.jpg'),
      ('Seville', '/cities/seville.jpg'),
      ('Bilbao', '/cities/bilbao.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Spain'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Amsterdam', '/cities/amsterdam.jpg'),
      ('Rotterdam', '/cities/rotterdam.jpg'),
      ('The Hague', '/cities/the_hague.jpg'),
      ('Utrecht', '/cities/utrecht.jpg'),
      ('Eindhoven', '/cities/eindhoven.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Netherlands'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Brussels', '/cities/brussels.jpg'),
      ('Antwerp', '/cities/antwerp.jpg'),
      ('Ghent', '/cities/ghent.jpg'),
      ('Bruges', '/cities/bruges.jpg'),
      ('Charleroi', '/cities/charleroi.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Belgium'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Stockholm', '/cities/stockholm.jpg'),
      ('Gothenburg', '/cities/gothenburg.jpg'),
      ('Malmö', '/cities/malmö.jpg'),
      ('Uppsala', '/cities/uppsala.jpg'),
      ('Västerås', '/cities/västerås.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Sweden'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Warsaw', '/cities/warsaw.jpg'),
      ('Kraków', '/cities/kraków.jpg'),
      ('Gdańsk', '/cities/gdańsk.jpg'),
      ('Wrocław', '/cities/wrocław.jpg'),
      ('Poznań', '/cities/poznań.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Poland'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Bucharest', '/cities/bucharest.jpg'),
      ('Cluj-Napoca', '/cities/clujnapoca.jpg'),
      ('Timișoara', '/cities/timisoara.jpg'),
      ('Iași', '/cities/iasi.jpg'),
      ('Constanța', '/cities/constanta.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Romania'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Athens', '/cities/athens.jpg'),
      ('Thessaloniki', '/cities/thessaloniki.jpg'),
      ('Patras', '/cities/patras.jpg'),
      ('Heraklion', '/cities/heraklion.jpg'),
      ('Larissa', '/cities/larissa.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Greece'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Tokyo', '/cities/tokyo.jpg'),
      ('Osaka', '/cities/osaka.jpg'),
      ('Kyoto', '/cities/kyoto.jpg'),
      ('Yokohama', '/cities/yokohama.jpg'),
      ('Sapporo', '/cities/sapporo.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Japan'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Beijing', '/cities/beijing.jpg'),
      ('Shanghai', '/cities/shanghai.jpg'),
      ('Guangzhou', '/cities/guangzhou.jpg'),
      ('Shenzhen', '/cities/shenzhen.jpg'),
      ('Chengdu', '/cities/chengdu.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'China'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Mumbai', '/cities/mumbai.jpg'),
      ('Delhi', '/cities/delhi.jpg'),
      ('Bengaluru', '/cities/bengaluru.jpg'),
      ('Hyderabad', '/cities/hyderabad.jpg'),
      ('Chennai', '/cities/chennai.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'India'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('New York', '/cities/new_york.jpg'),
      ('Los Angeles', '/cities/los_angeles.jpg'),
      ('Chicago', '/cities/chicago.jpg'),
      ('Houston', '/cities/houston.jpg'),
      ('Miami', '/cities/miami.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'United States'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Toronto', '/cities/toronto.jpg'),
      ('Vancouver', '/cities/vancouver.jpg'),
      ('Montreal', '/cities/montreal.jpg'),
      ('Calgary', '/cities/calgary.jpg'),
      ('Ottawa', '/cities/ottawa.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Canada'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Mexico City', '/cities/mexico_city.jpg'),
      ('Guadalajara', '/cities/guadalajara.jpg'),
      ('Monterrey', '/cities/monterrey.jpg'),
      ('Puebla', '/cities/puebla.jpg'),
      ('Tijuana', '/cities/tijuana.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Mexico'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('São Paulo', '/cities/são_paulo.jpg'),
      ('Rio de Janeiro', '/cities/rio_de_janeiro.jpg'),
      ('Brasília', '/cities/brasília.jpg'),
      ('Salvador', '/cities/salvador.jpg'),
      ('Fortaleza', '/cities/fortaleza.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Brazil'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Buenos Aires', '/cities/buenos_aires.jpg'),
      ('Córdoba', '/cities/córdoba.jpg'),
      ('Rosario', '/cities/rosario.jpg'),
      ('Mendoza', '/cities/mendoza.jpg'),
      ('La Plata', '/cities/la_plata.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Argentina'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Johannesburg', '/cities/johannesburg.jpg'),
      ('Cape Town', '/cities/cape_town.jpg'),
      ('Durban', '/cities/durban.jpg'),
      ('Pretoria', '/cities/pretoria.jpg'),
      ('Port Elizabeth', '/cities/port_elizabeth.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'South Africa'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Nairobi', '/cities/nairobi.jpg'),
      ('Mombasa', '/cities/mombasa.jpg'),
      ('Kisumu', '/cities/kisumu.jpg'),
      ('Nakuru', '/cities/nakuru.jpg'),
      ('Eldoret', '/cities/eldoret.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Kenya'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Sydney', '/cities/sydney.jpg'),
      ('Melbourne', '/cities/melbourne.jpg'),
      ('Brisbane', '/cities/brisbane.jpg'),
      ('Perth', '/cities/perth.jpg'),
      ('Adelaide', '/cities/adelaide.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'Australia'
) AS c;

INSERT INTO cities (city_name, image_path, country_id)
SELECT t.city, t.img, c.id
FROM (VALUES
      ('Auckland', '/cities/auckland.jpg'),
      ('Wellington', '/cities/wellington.jpg'),
      ('Christchurch', '/cities/christchurch.jpg'),
      ('Hamilton', '/cities/hamilton.jpg'),
      ('Dunedin', '/cities/dunedin.jpg')
     ) AS t(city, img)
CROSS JOIN LATERAL (
    SELECT id FROM countries WHERE country_name = 'New Zealand'
) AS c;

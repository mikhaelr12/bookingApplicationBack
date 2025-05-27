WITH
    city_list AS (
        SELECT id AS city_id, city_name
        FROM cities
    ),
    series AS (
        SELECT generate_series(1,10) AS n
    )

INSERT INTO attractions
    (attraction_name,
     description,
     duration,
     image_url,
     additional_info,
     city_id,
     category_id)
SELECT
    city_name || ' Attraction ' || s.n                           AS attraction_name,
    'Popular attraction no. ' || s.n || ' in ' || city_name      AS description,
    60 + (s.n-1)*15                                              AS duration,
    '/img/attractions/' || lower(replace(city_name,' ','_')) || '_' || s.n || '.jpg' AS image_url,
    NULL                                                         AS additional_info,
    c.city_id,
    3                                                          AS category_id  -- ID pentru categoria "Attractions"
FROM city_list c
         CROSS JOIN series s
    ON CONFLICT DO NOTHING;

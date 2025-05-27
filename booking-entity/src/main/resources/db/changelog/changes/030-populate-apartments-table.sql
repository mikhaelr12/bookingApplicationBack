WITH
    city_list AS (
        SELECT id   AS city_id,
               city_name
        FROM   cities
    ),
    series AS (                          -- 1 … 10  (10 apartamente per oraș)
        SELECT generate_series(1,10) AS n
    ),
    cat AS (                             -- categoria „Apartments”
        SELECT id AS category_id
        FROM   categories
        WHERE  category_name = 'Apartments'
    LIMIT  1
    )

INSERT INTO apartments
(apartment_name,
 address,
 rating,
 price,
 no_bedrooms,
 no_guests,
 image,
 city_id,
 category_id)
SELECT
    city_name || ' Apartment ' || s.n                              AS apartment_name,

    'Main St ' || s.n                                              AS address,

    ROUND(7.0 + (s.n-1)*0.2 , 1)                                   AS rating,

    60 + (s.n-1)*10                                                AS price,

    ((s.n-1)/3)+1                                                 AS no_bedrooms,

    (((s.n-1)/3)+1) * 2                                            AS no_guests,

    '/img/apartments/' ||
    lower(replace(city_name,' ','_')) || '_' || s.n || '.jpg'  AS image,

    /* --- FK-uri ----------------------------------------------------- */
    c.city_id,
    cat.category_id
FROM city_list c
         CROSS JOIN series s
         CROSS JOIN cat
    ON CONFLICT DO NOTHING;           -- idem-potent: nu creează duplicate

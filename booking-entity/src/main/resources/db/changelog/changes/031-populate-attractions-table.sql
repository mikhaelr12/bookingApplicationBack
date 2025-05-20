
WITH
    city_list AS (
        SELECT id   AS city_id,
               city_name
        FROM   cities
    ),
    series AS (                          -- 1 … 10  (10 atracții per oraș)
        SELECT generate_series(1,10) AS n
    )

INSERT INTO attractions
        (attraction_name,
         description,
         duration,
         image_url,
         additional_info,
         city_id)
SELECT
    /* ---------- Nume atracție --------------------------------------- */
    city_name || ' Attraction ' || s.n                           AS attraction_name,

    /* ---------- Descriere simplă ------------------------------------ */
    'Popular attraction no. ' || s.n || ' in ' || city_name      AS description,

    /* ---------- Durata: 60 + 15*(n-1) minute ----------------------- */
    60 + (s.n-1)*15                                              AS duration,

    /* ---------- Imagine                                              */
    '/img/attractions/' ||
    lower(replace(city_name,' ','_')) || '_' || s.n || '.jpg' AS image_url,

    /* ---------- Info suplimentară                                    */
    NULL                                                          AS additional_info,

    /* ---------- FK oraș                                              */
    c.city_id
FROM city_list c
         CROSS JOIN series s
    ON CONFLICT DO NOTHING;          -- rulează de oricâte ori fără duplicate

/* ================================================================
   POPULATE hotel_rooms  – rulează oricând, fără duplicate
   ================================================================ */

/* --- pachete CTE ------------------------------------------------ */
WITH hotels AS (              -- toate hotelurile
    SELECT id AS hotel_id
    FROM   hotels
),
     types AS (                    -- cele trei tipuri
         SELECT id AS rt_id,
                room_type
         FROM   room_types
     ),
     series AS (                   -- 1,2,3,4,5  (5 camere / tip)
         SELECT generate_series(1,5) AS n
     )
/* --- inserare --------------------------------------------------- */
INSERT INTO hotel_rooms
        (room_number,
         description,
         price,
         max_guests,
         image_url,
         rt_id,
         hotel_id)
SELECT
    /* room_number: 101-105 / 201-205 / 301-305 */
    CASE types.room_type
        WHEN 'Standard' THEN 100
        WHEN 'Luxury'   THEN 200
        WHEN 'Premium'  THEN 300
        END + series.n                                         AS room_number,

    /* descriere */
    CONCAT(
            types.room_type,
            ' room with ',
            CASE types.room_type
                WHEN 'Standard' THEN 'street view'
                WHEN 'Luxury'   THEN 'city view'
                WHEN 'Premium'  THEN 'panoramic view'
                END
    )                                                      AS description,

    /* preţ: 70/120/180 + (n-1)*5  */
    (CASE types.room_type
         WHEN 'Standard' THEN  70
         WHEN 'Luxury'   THEN 120
         WHEN 'Premium'  THEN 180
        END) + (series.n - 1) * 5                             AS price,

    /* capacitate */
    floor(random() * 5 + 1)::int                                                   AS max_guests,

    /* imagine după convenţie */
    '/img/rooms/' ||
    CASE types.room_type
        WHEN 'Standard' THEN 'std_'
        WHEN 'Luxury'   THEN 'lux_'
        WHEN 'Premium'  THEN 'pre_'
        END || series.n || '.jpg'                              AS image_url,

    types.rt_id,
    hotels.hotel_id
FROM hotels
         CROSS JOIN types
         CROSS JOIN series
    ON CONFLICT DO NOTHING;   -- script idempotent

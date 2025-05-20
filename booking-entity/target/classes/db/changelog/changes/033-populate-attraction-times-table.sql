/* ======================================================================
   POPULATE `attraction_times`
   ─────────────────────────────────────────────────────────────────────
   • Creează pentru FIECARE atracție 5 zile consecutive (începând de
     azi) × 3 intervale orare = 15 „slot-uri” per atracție.
   • max_people fix: 25  (schimbă ușor după nevoie).
   • Scriptul este idem-potent:  ON CONFLICT DO NOTHING.
   ====================================================================== */

WITH
    attrs AS (                           -- toate atracțiile existente
        SELECT id AS attraction_id
        FROM   attractions
    ),

    dates AS (                           -- 5 zile: azi + următoarele 4
        SELECT generate_series(
                               CURRENT_DATE,
                               CURRENT_DATE + INTERVAL '4 days',
                               INTERVAL '1 day'
               )::date AS attraction_date
    ),

    hours AS (                           -- 3 intervale orare fixe
        SELECT unnest( ARRAY['09:00','13:00','17:00']::time[] ) AS attraction_time
    )

INSERT INTO attraction_times
        (attraction_date,
         attraction_time,
         max_people,
         attraction_id)
SELECT
    d.attraction_date,
    h.attraction_time,
    25                AS max_people,     -- ajustează după nevoie
    a.attraction_id
FROM     attrs a
             CROSS JOIN dates d
             CROSS JOIN hours h
    ON CONFLICT DO NOTHING;                 -- nu creează duplicate la rerulare
